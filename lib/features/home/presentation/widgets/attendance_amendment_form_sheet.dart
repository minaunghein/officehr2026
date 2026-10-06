import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/params/create_amendment_params.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_amendment_provider.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';

Future<bool> showAttendanceAmendmentForm(BuildContext context) async {
  final submitted = await showModalBottomSheet<bool>(
    context: context,
    isScrollControlled: true,
    useSafeArea: true,
    showDragHandle: true,
    builder: (_) => const AttendanceAmendmentFormSheet(),
  );
  return submitted ?? false;
}

class AttendanceAmendmentFormSheet extends HookConsumerWidget {
  const AttendanceAmendmentFormSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final today = useMemoized(() {
      final now = DateTime.now();
      return DateTime(now.year, now.month, now.day);
    });

    final type = useState(kAmendmentTypes.first);
    final date = useState(today);
    final clockIn = useState<TimeOfDay?>(null);
    final clockOut = useState<TimeOfDay?>(null);
    final reason = useTextEditingController();
    final submitting = useState(false);
    final errorMessage = useState<String?>(null);

    final requiresTime = !kAmendmentTypesWithoutTime.contains(type.value);
    final showClockIn = requiresTime && type.value != 'MISSED_OUT';
    final showClockOut = requiresTime && type.value != 'MISSED_IN';

    Future<void> submit() async {
      FocusScope.of(context).unfocus();

      final session = ref.read(currentUserProvider).value;
      if (session == null) {
        errorMessage.value = 'Your session has expired. Please log in.';
        return;
      }
      if (reason.text.trim().isEmpty) {
        errorMessage.value = 'Please provide a reason for the request.';
        return;
      }
      if (showClockIn && clockIn.value == null) {
        errorMessage.value = 'Please select the requested clock in time.';
        return;
      }
      if (showClockOut && clockOut.value == null) {
        errorMessage.value = 'Please select the requested clock out time.';
        return;
      }

      errorMessage.value = null;
      submitting.value = true;
      try {
        await ref
            .read(attendanceAmendmentsProvider.notifier)
            .create(
              CreateAmendmentParams(
                userId: session.userId,
                dateId: formatApiDate(date.value),
                amendmentType: type.value,
                requestedClockIn: showClockIn
                    ? _formatTimeOfDay(clockIn.value!)
                    : null,
                requestedClockOut: showClockOut
                    ? _formatTimeOfDay(clockOut.value!)
                    : null,
                reason: reason.text.trim(),
              ),
            );
        if (context.mounted) Navigator.of(context).pop(true);
        SnackbarUtils.showSuccess('Attendance request submitted.');
      } catch (error) {
        errorMessage.value = getUserFriendlyError(error);
      } finally {
        if (context.mounted) submitting.value = false;
      }
    }

    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.viewInsetsOf(context).bottom + 20,
      ),
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'New Attendance Request',
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                'Request a correction for a missed or incorrect punch.',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                ),
              ),
              const SizedBox(height: 20),
              _FieldLabel(label: 'Request type'),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                initialValue: type.value,
                isExpanded: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.category_rounded),
                ),
                items: [
                  for (final value in kAmendmentTypes)
                    DropdownMenuItem(
                      value: value,
                      child: Text(attendanceStatusLabel(value)),
                    ),
                ],
                onChanged: submitting.value
                    ? null
                    : (value) {
                        if (value == null) return;
                        type.value = value;
                        if (kAmendmentTypesWithoutTime.contains(value)) {
                          clockIn.value = null;
                          clockOut.value = null;
                        }
                      },
              ),
              const SizedBox(height: 16),
              _FieldLabel(label: 'Date'),
              const SizedBox(height: 8),
              _TapField(
                icon: Icons.calendar_month_rounded,
                label: _formatDisplayDate(date.value),
                onTap: submitting.value
                    ? null
                    : () async {
                        final picked = await showDatePicker(
                          context: context,
                          initialDate: date.value,
                          firstDate: DateTime(today.year - 2),
                          lastDate: today,
                        );
                        if (picked != null) date.value = picked;
                      },
              ),
              if (showClockIn || showClockOut) ...[
                const SizedBox(height: 16),
                _FieldLabel(label: 'Requested time'),
                const SizedBox(height: 8),
                Row(
                  children: [
                    if (showClockIn)
                      Expanded(
                        child: _TimeField(
                          label: 'Clock in',
                          value: clockIn.value,
                          enabled: !submitting.value,
                          onPick: (value) => clockIn.value = value,
                        ),
                      ),
                    if (showClockIn && showClockOut) const SizedBox(width: 12),
                    if (showClockOut)
                      Expanded(
                        child: _TimeField(
                          label: 'Clock out',
                          value: clockOut.value,
                          enabled: !submitting.value,
                          onPick: (value) => clockOut.value = value,
                        ),
                      ),
                  ],
                ),
              ],
              const SizedBox(height: 16),
              _FieldLabel(label: 'Reason'),
              const SizedBox(height: 8),
              TextFormField(
                controller: reason,
                maxLines: 4,
                minLines: 3,
                enabled: !submitting.value,
                textCapitalization: TextCapitalization.sentences,
                decoration: const InputDecoration(
                  hintText: 'Explain why this correction is needed...',
                ),
              ),
              if (errorMessage.value != null) ...[
                const SizedBox(height: 16),
                _FormErrorBanner(message: errorMessage.value!),
              ],
              const SizedBox(height: 24),
              FilledButton.icon(
                onPressed: submitting.value ? null : submit,
                icon: submitting.value
                    ? const SizedBox(
                        width: 18,
                        height: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.send_rounded),
                label: Text(
                  submitting.value ? 'Submitting...' : 'Submit Request',
                ),
                style: FilledButton.styleFrom(
                  minimumSize: const Size.fromHeight(52),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      AppSizes.borderRadiusLg,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}

class _FormErrorBanner extends StatelessWidget {
  const _FormErrorBanner({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: theme.colorScheme.error.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        border: Border.all(
          color: theme.colorScheme.error.withValues(alpha: 0.3),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.error_outline_rounded,
            size: 18,
            color: theme.colorScheme.error,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.error,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FieldLabel extends StatelessWidget {
  const _FieldLabel({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      label,
      style: theme.textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.w700,
        color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
      ),
    );
  }
}

class _TapField extends StatelessWidget {
  const _TapField({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withValues(
            alpha: 0.5,
          ),
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
        child: Row(
          children: [
            Icon(icon, size: 20, color: theme.colorScheme.primary),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                label,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Icon(
              Icons.edit_calendar_rounded,
              size: 18,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }
}

class _TimeField extends StatelessWidget {
  const _TimeField({
    required this.label,
    required this.value,
    required this.enabled,
    required this.onPick,
  });

  final String label;
  final TimeOfDay? value;
  final bool enabled;
  final ValueChanged<TimeOfDay> onPick;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasValue = value != null;

    return InkWell(
      onTap: enabled
          ? () async {
              final picked = await showTimePicker(
                context: context,
                initialTime: value ?? TimeOfDay.now(),
              );
              if (picked != null) onPick(picked);
            }
          : null,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withValues(
            alpha: 0.5,
          ),
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.3),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Icon(
                  Icons.schedule_rounded,
                  size: 16,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 6),
                Text(
                  hasValue ? value!.format(context) : 'Select time',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: hasValue
                        ? null
                        : theme.colorScheme.onSurface.withValues(alpha: 0.4),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

String _formatTimeOfDay(TimeOfDay time) {
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}

String _formatDisplayDate(DateTime date) {
  const months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  return '${date.day} ${months[date.month - 1]} ${date.year}';
}
