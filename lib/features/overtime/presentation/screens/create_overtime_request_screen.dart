import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';
import 'package:office_hr/features/overtime/presentation/providers/overtime_providers.dart';
import 'package:office_hr/features/overtime/presentation/utils/overtime_formatters.dart';
import 'package:office_hr/features/overtime/presentation/widgets/overtime_type_selector_sheet.dart';

/// Submit a new overtime request: date, start/end time, OT type and reason.
class CreateOvertimeRequestScreen extends HookConsumerWidget {
  const CreateOvertimeRequestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = useState<DateTime?>(null);
    final startTime = useState<TimeOfDay?>(null);
    final endTime = useState<TimeOfDay?>(null);
    final otType = useState<OvertimeType?>(null);
    final reasonController = useTextEditingController();
    final submitting = useState(false);

    Future<void> pickDate() async {
      final now = DateTime.now();
      final picked = await showDatePicker(
        context: context,
        initialDate: date.value ?? now,
        firstDate: now.subtract(const Duration(days: 365)),
        lastDate: now.add(const Duration(days: 365)),
      );
      if (picked != null) date.value = picked;
    }

    Future<void> pickTime({required bool isStart}) async {
      final initial = isStart
          ? (startTime.value ?? const TimeOfDay(hour: 18, minute: 0))
          : (endTime.value ?? const TimeOfDay(hour: 22, minute: 0));
      final picked = await showTimePicker(
        context: context,
        initialTime: initial,
      );
      if (picked == null) return;
      if (isStart) {
        startTime.value = picked;
      } else {
        endTime.value = picked;
      }
    }

    Future<void> pickType() async {
      final selected = await showModalBottomSheet<OvertimeType>(
        context: context,
        isScrollControlled: true,
        showDragHandle: true,
        builder: (_) => OvertimeTypeSelectorSheet(selected: otType.value),
      );
      if (selected != null) otType.value = selected;
    }

    void submit() async {
      FocusScope.of(context).unfocus();
      if (date.value == null) {
        SnackbarUtils.showError('Please select the overtime date.');
        return;
      }
      if (startTime.value == null || endTime.value == null) {
        SnackbarUtils.showError('Please select the start and end times.');
        return;
      }
      final type = otType.value;
      if (type == null) {
        SnackbarUtils.showError('Please select an overtime type.');
        return;
      }
      final hours = overtimeRequestedHours(
        formatTimeOfDay(startTime.value!),
        formatTimeOfDay(endTime.value!),
      );
      if (hours <= 0) {
        SnackbarUtils.showError('The end time must be after the start time.');
        return;
      }

      submitting.value = true;
      try {
        await ref
            .read(createOvertimeRequestProvider.notifier)
            .submit(
              date: date.value!,
              startTime: formatTimeOfDay(startTime.value!),
              endTime: formatTimeOfDay(endTime.value!),
              otType: type,
              reason: reasonController.text.trim(),
            );
        await ref.read(overtimeRequestsProvider.notifier).refresh();
        if (!context.mounted) return;
        SnackbarUtils.showSuccess('Overtime request submitted.');
        Navigator.of(context).pop();
      } catch (error) {
        if (context.mounted) {
          SnackbarUtils.showError(getUserFriendlyError(error));
        }
      } finally {
        if (context.mounted) submitting.value = false;
      }
    }

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text('Request Overtime')),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
        children: [
          _FieldCard(
            title: 'Date',
            icon: Icons.calendar_month_rounded,
            child: _PickerField(
              label: 'Overtime date',
              value: date.value == null ? 'Select date' : null,
              displayValue: formatOvertimeDate(date.value),
              leadingIcon: Icons.event_rounded,
              onTap: pickDate,
            ),
          ),
          const SizedBox(height: 16),
          _FieldCard(
            title: 'Time',
            icon: Icons.schedule_rounded,
            child: Column(
              children: [
                _PickerField(
                  label: 'Start time',
                  value: startTime.value == null ? 'Select start time' : null,
                  displayValue: startTime.value == null
                      ? ''
                      : formatOvertimeClock(formatTimeOfDay(startTime.value!)),
                  leadingIcon: Icons.play_circle_outline_rounded,
                  onTap: () => pickTime(isStart: true),
                ),
                const SizedBox(height: 12),
                _PickerField(
                  label: 'End time',
                  value: endTime.value == null ? 'Select end time' : null,
                  displayValue: endTime.value == null
                      ? ''
                      : formatOvertimeClock(formatTimeOfDay(endTime.value!)),
                  leadingIcon: Icons.stop_circle_outlined,
                  onTap: () => pickTime(isStart: false),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _FieldCard(
            title: 'Type',
            icon: Icons.bolt_rounded,
            child: _PickerField(
              label: 'Overtime type',
              value: otType.value == null ? 'Select type' : null,
              displayValue: otType.value?.value ?? '',
              leadingIcon: Icons.category_outlined,
              onTap: pickType,
            ),
          ),
          const SizedBox(height: 16),
          _FieldCard(
            title: 'Reason',
            icon: Icons.notes_rounded,
            child: TextFormField(
              controller: reasonController,
              maxLines: 4,
              minLines: 3,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                hintText: 'Describe why overtime is needed...',
              ),
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            AppSizes.xxl,
            AppSizes.md,
            AppSizes.xxl,
            AppSizes.md,
          ),
          child: FilledButton.icon(
            onPressed: submitting.value ? null : submit,
            icon: submitting.value
                ? const SizedBox(
                    width: 18,
                    height: 18,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.send_rounded),
            label: Text(submitting.value ? 'Submitting...' : 'Submit Request'),
            style: FilledButton.styleFrom(
              minimumSize: const Size.fromHeight(52),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FieldCard extends StatelessWidget {
  const _FieldCard({
    required this.title,
    required this.icon,
    required this.child,
  });

  final String title;
  final IconData icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.18),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                title,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.3,
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          child,
        ],
      ),
    );
  }
}

class _PickerField extends StatelessWidget {
  const _PickerField({
    required this.label,
    required this.value,
    required this.displayValue,
    required this.leadingIcon,
    required this.onTap,
  });

  final String label;
  final String? value;
  final String displayValue;
  final IconData leadingIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasValue = value == null;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withValues(
            alpha: 0.5,
          ),
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        ),
        child: Row(
          children: [
            Icon(leadingIcon, size: 20, color: theme.colorScheme.primary),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.55,
                      ),
                    ),
                  ),
                  Text(
                    hasValue ? displayValue : value!,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: hasValue
                          ? null
                          : theme.colorScheme.onSurface.withValues(alpha: 0.45),
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.edit_rounded,
              size: 18,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
            ),
          ],
        ),
      ),
    );
  }
}
