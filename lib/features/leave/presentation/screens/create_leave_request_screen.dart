import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/network/api_error_message.dart';
import 'package:office_hr/core/services/app_logger.dart';
import 'package:office_hr/core/widgets/container_shimmer.dart';
import 'package:office_hr/features/leave/domain/entities/leave_balance.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/domain/entities/leave_type.dart';
import 'package:office_hr/features/leave/domain/entities/uploaded_file.dart';
import 'package:office_hr/features/leave/presentation/providers/leave_providers.dart';
import 'package:office_hr/features/leave/presentation/utils/leave_formatters.dart';

class CreateLeaveRequestScreen extends ConsumerStatefulWidget {
  const CreateLeaveRequestScreen({super.key});

  @override
  ConsumerState<CreateLeaveRequestScreen> createState() =>
      _CreateLeaveRequestScreenState();
}

class _CreateLeaveRequestScreenState
    extends ConsumerState<CreateLeaveRequestScreen> {
  final _reasonController = TextEditingController();
  final _picker = ImagePicker();

  LeaveType? _selectedType;
  DateTime? _startDate;
  DateTime? _endDate;
  bool _isHalfDay = false;
  HalfDayPeriod _halfDayPeriod = HalfDayPeriod.am;
  XFile? _attachment;
  UploadedFile? _uploadedFile;
  bool _submitting = false;

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  double get _totalDays {
    if (_isHalfDay) return 0.5;
    final start = _startDate;
    final end = _endDate;
    if (start == null || end == null) return 0;
    return end.difference(start).inDays + 1.0;
  }

  LeaveBalance? _balanceFor(String leaveTypeId) {
    final balances = ref.read(leaveBalancesProvider).value;
    if (balances == null) return null;
    for (final balance in balances) {
      if (balance.leaveTypeId == leaveTypeId) return balance;
    }
    return null;
  }

  void _onHalfDayChanged(bool value) {
    setState(() {
      _isHalfDay = value;
      if (value && _startDate != null) {
        _endDate = _startDate;
      }
    });
  }

  Future<void> _pickDate() async {
    final now = DateTime.now();
    if (_isHalfDay) {
      final picked = await showDatePicker(
        context: context,
        initialDate: _startDate ?? now,
        firstDate: now.subtract(const Duration(days: 365)),
        lastDate: now.add(const Duration(days: 730)),
      );
      if (picked != null) {
        setState(() {
          _startDate = picked;
          _endDate = picked;
        });
      }
      return;
    }

    final range = await showDateRangePicker(
      context: context,
      firstDate: now.subtract(const Duration(days: 365)),
      lastDate: now.add(const Duration(days: 730)),
      initialDateRange: _startDate != null && _endDate != null
          ? DateTimeRange(start: _startDate!, end: _endDate!)
          : null,
    );
    if (range != null) {
      setState(() {
        _startDate = range.start;
        _endDate = range.end;
      });
    }
  }

  Future<void> _pickLeaveType(List<LeaveType> types) async {
    final selected = await showModalBottomSheet<LeaveType>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      builder: (context) =>
          _LeaveTypeSheet(types: types, selectedId: _selectedType?.id),
    );
    if (selected != null) {
      setState(() {
        _selectedType = selected;
        if (!selected.allowHalfDay) {
          _isHalfDay = false;
        }
      });
    }
  }

  Future<void> _pickAttachment() async {
    try {
      final file = await _picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 85,
        maxWidth: 1600,
      );
      if (file != null) {
        setState(() {
          _attachment = file;
          _uploadedFile = null;
        });
      }
    } catch (error, stack) {
      AppLogger.e('Image pick failed: $error', error: error, stack: stack);
      if (mounted) {
        _showError('Could not open the gallery. Please try again.');
      }
    }
  }

  Future<UploadedFile> _ensureAttachmentUploaded() async {
    final existing = _uploadedFile;
    if (existing != null) return existing;
    final file = _attachment!;
    final uploaded = await ref.read(uploadFileUsecaseProvider)(
      filePath: file.path,
      fileName: file.name,
    );
    _uploadedFile = uploaded;
    return uploaded;
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(context).colorScheme.error,
        ),
      );
  }

  Future<void> _submit() async {
    FocusScope.of(context).unfocus();

    final type = _selectedType;
    if (type == null) {
      _showError('Please select a leave type.');
      return;
    }
    if (_startDate == null || _endDate == null) {
      _showError('Please select the leave date(s).');
      return;
    }
    if (_reasonController.text.trim().isEmpty) {
      _showError('Please provide a reason for your leave.');
      return;
    }
    if (type.requiresAttachment && _attachment == null) {
      _showError('${type.displayTitle} requires a supporting attachment.');
      return;
    }

    final balance = _balanceFor(type.id);
    if (balance != null && _totalDays > balance.available) {
      _showError(
        'Requested ${formatDays(_totalDays)} exceeds your available '
        '${formatDays(balance.available)}.',
      );
      return;
    }

    setState(() => _submitting = true);
    try {
      String? attachmentUrl;
      if (_attachment != null) {
        final uploaded = await _ensureAttachmentUploaded();
        attachmentUrl = uploaded.url;
      }

      await ref
          .read(createLeaveRequestProvider.notifier)
          .submit(
            leaveTypeId: type.id,
            startDate: _startDate!,
            endDate: _endDate!,
            isHalfDay: _isHalfDay,
            halfDayPeriod: _halfDayPeriod,
            reason: _reasonController.text.trim(),
            attachmentUrl: attachmentUrl,
          );

      await Future.wait([
        ref.read(leaveRequestsProvider.notifier).refresh(),
        ref.read(leaveBalancesProvider.notifier).refresh(),
      ]);

      if (!mounted) return;
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
          const SnackBar(content: Text('Leave request submitted.')),
        );
      Navigator.of(context).pop();
    } catch (error) {
      if (mounted) _showError(getUserFriendlyError(error));
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Request Leave', style: theme.textTheme.headlineMedium),
        centerTitle: true,
      ),
      body: _buildForm(context, theme),
      // typesState.when(
      //   data: (types) => _buildForm(context, theme, types),
      //   loading: () => const Center(child: CircularProgressIndicator()),
      //   error: (error, _) => Center(
      //     child: Padding(
      //       padding: const EdgeInsets.all(24),
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           Icon(
      //             Icons.error_outline_rounded,
      //             color: theme.colorScheme.error,
      //           ),
      //           const SizedBox(height: 12),
      //           Text(
      //             getUserFriendlyError(error),
      //             textAlign: TextAlign.center,
      //             style: theme.textTheme.bodyMedium,
      //           ),
      //           const SizedBox(height: 16),
      //           ElevatedButton(
      //             onPressed: () => ref.invalidate(leaveTypesProvider),
      //             child: const Text('Retry'),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  Widget _buildForm(BuildContext context, ThemeData theme) {
    final typesState = ref.watch(leaveTypesProvider);
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      children: [
        _SectionCard(
          title: 'Leave Type',
          icon: Icons.category_rounded,
          child: typesState.when(
            data: (data) => _TypeSelector(
              selected: _selectedType,
              onTap: data.isEmpty ? null : () => _pickLeaveType(data),
              balance: _selectedType == null
                  ? null
                  : _balanceFor(_selectedType!.id),
            ),
            loading: () => ContainerShimmer(height: 65),
            error: (error, _) => Text(
              getUserFriendlyError(error),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.error,
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Duration',
          icon: Icons.date_range_rounded,
          child: Column(
            children: [
              _DateField(
                label: 'Start date',
                value: formatLeaveDate(_startDate),
                onTap: _pickDate,
              ),
              if (!_isHalfDay) ...[
                const SizedBox(height: 12),
                _DateField(
                  label: 'End date',
                  value: formatLeaveDate(_endDate),
                  onTap: _pickDate,
                ),
              ],
              const SizedBox(height: 16),
              _ToggleRow(
                title: 'Half day',
                subtitle: 'Take only half of the day off',
                value: _isHalfDay,
                enabled: _selectedType?.allowHalfDay ?? true,
                onChanged: _onHalfDayChanged,
              ),
              if (_isHalfDay) ...[
                const SizedBox(height: 12),
                SegmentedButton<HalfDayPeriod>(
                  segments: const [
                    ButtonSegment(
                      value: HalfDayPeriod.am,
                      label: Text('Morning'),
                      icon: Icon(Icons.wb_sunny_outlined, size: 16),
                    ),
                    ButtonSegment(
                      value: HalfDayPeriod.pm,
                      label: Text('Afternoon'),
                      icon: Icon(Icons.wb_twilight_rounded, size: 16),
                    ),
                  ],
                  selected: {_halfDayPeriod},
                  onSelectionChanged: (value) =>
                      setState(() => _halfDayPeriod = value.first),
                ),
              ],
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(
                    Icons.timelapse_rounded,
                    size: 16,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Total: ${formatDays(_totalDays)}',
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Reason',
          icon: Icons.notes_rounded,
          child: TextFormField(
            controller: _reasonController,
            maxLines: 4,
            minLines: 3,
            textCapitalization: TextCapitalization.sentences,
            decoration: const InputDecoration(
              hintText: 'Describe the reason for your leave...',
            ),
          ),
        ),
        const SizedBox(height: 16),
        _SectionCard(
          title: 'Attachment',
          icon: Icons.attach_file_rounded,
          trailing: (_selectedType?.requiresAttachment ?? false)
              ? Text(
                  'Required',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.error,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : Text(
                  'Optional',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
          child: _AttachmentPicker(
            attachment: _attachment,
            onPick: _pickAttachment,
            isSubmitting: _submitting,
            onRemove: () => setState(() {
              _attachment = null;
              _uploadedFile = null;
            }),
          ),
        ),
        if (_selectedType != null &&
            (_selectedType!.advanceNoticeDays > 0 ||
                _selectedType!.requiresApproval)) ...[
          const SizedBox(height: 16),
          _InfoBanner(type: _selectedType!),
        ],
        const SizedBox(height: 24),
        FilledButton.icon(
          onPressed: _submitting ? null : _submit,
          icon: _submitting
              ? const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
              : const Icon(Icons.send_rounded),
          label: Text(_submitting ? 'Submitting...' : 'Submit Request'),
          style: FilledButton.styleFrom(
            minimumSize: const Size.fromHeight(52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            ),
          ),
        ),
      ],
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    required this.title,
    required this.icon,
    required this.child,
    this.trailing,
  });

  final String title;
  final IconData icon;
  final Widget child;
  final Widget? trailing;

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
              Expanded(
                child: Text(
                  title,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.3,
                  ),
                ),
              ),
              ?trailing,
            ],
          ),
          const SizedBox(height: 14),
          child,
        ],
      ),
    );
  }
}

class _TypeSelector extends StatelessWidget {
  const _TypeSelector({
    required this.selected,
    required this.onTap,
    required this.balance,
  });

  final LeaveType? selected;
  final VoidCallback? onTap;
  final LeaveBalance? balance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: theme.colorScheme.surfaceContainerHighest.withValues(
            alpha: 0.5,
          ),
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        ),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                selected?.initials ?? '?',
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    selected?.displayTitle ?? 'Select leave type',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      color: selected == null
                          ? theme.colorScheme.onSurface.withValues(alpha: 0.5)
                          : null,
                    ),
                  ),
                  if (selected != null && selected!.code.isNotEmpty)
                    Text(
                      '${selected!.code} · ${selected!.accrualType}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.55,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            if (balance != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${balance!.available.toStringAsFixed(balance!.available == balance!.available.roundToDouble() ? 0 : 1)} left',
                    style: theme.textTheme.labelLarge?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'of ${balance!.totalGranted.toInt()}',
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            const SizedBox(width: 8),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}

class _DateField extends StatelessWidget {
  const _DateField({
    required this.label,
    required this.value,
    required this.onTap,
  });

  final String label;
  final String value;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
            Icon(
              Icons.calendar_month_rounded,
              size: 20,
              color: theme.colorScheme.primary,
            ),
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
                    value,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
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

class _ToggleRow extends StatelessWidget {
  const _ToggleRow({
    required this.title,
    required this.subtitle,
    required this.value,
    required this.enabled,
    required this.onChanged,
  });

  final String title;
  final String subtitle;
  final bool value;
  final bool enabled;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: enabled
                      ? null
                      : theme.colorScheme.onSurface.withValues(alpha: 0.4),
                ),
              ),
              Text(
                enabled ? subtitle : 'Not available for this leave type',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                ),
              ),
            ],
          ),
        ),
        Switch(value: value, onChanged: enabled ? onChanged : null),
      ],
    );
  }
}

class _AttachmentPicker extends StatelessWidget {
  const _AttachmentPicker({
    required this.attachment,
    required this.onPick,
    required this.onRemove,
    required this.isSubmitting,
  });

  final XFile? attachment;
  final VoidCallback onPick;
  final VoidCallback onRemove;
  final bool isSubmitting;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final file = attachment;

    if (file == null) {
      return InkWell(
        onTap: onPick,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        child: DottedBorderBox(
          child: Column(
            children: [
              Icon(
                Icons.cloud_upload_outlined,
                size: 32,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 8),
              Text(
                'Upload a supporting image',
                style: theme.textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'PNG or JPG',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
          child: Image.file(
            File(file.path),
            width: 72,
            height: 72,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            file.name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        IconButton(
          onPressed: isSubmitting ? null : onPick,
          icon: const Icon(Icons.swap_horiz_rounded),
        ),
        IconButton(
          onPressed: isSubmitting ? null : onRemove,
          icon: Icon(
            Icons.delete_outline_rounded,
            color: theme.colorScheme.error,
          ),
        ),
      ],
    );
  }
}

class DottedBorderBox extends StatelessWidget {
  const DottedBorderBox({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        border: Border.all(
          color: theme.colorScheme.primary.withValues(alpha: 0.35),
          width: 1.5,
        ),
      ),
      child: child,
    );
  }
}

class _InfoBanner extends StatelessWidget {
  const _InfoBanner({required this.type});

  final LeaveType type;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final messages = <String>[];
    if (type.requiresApproval) {
      messages.add('Requires manager approval');
    }
    if (type.advanceNoticeDays > 0) {
      messages.add(
        'Apply at least ${type.advanceNoticeDays} day(s) in advance',
      );
    }
    if (type.requiresAttachment) {
      messages.add('Supporting document is required');
    }
    if (messages.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline_rounded,
            size: 18,
            color: theme.colorScheme.primary,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                for (final message in messages)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2),
                    child: Text(
                      '•  $message',
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.75,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LeaveTypeSheet extends StatelessWidget {
  const _LeaveTypeSheet({required this.types, this.selectedId});

  final List<LeaveType> types;
  final String? selectedId;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Row(
                children: [
                  Text(
                    'Select Leave Type',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: types.length,
                separatorBuilder: (_, _) => Divider(
                  height: 1,
                  color: theme.colorScheme.outline.withValues(alpha: 0.12),
                ),
                itemBuilder: (context, index) {
                  final type = types[index];
                  final isSelected = type.id == selectedId;
                  return ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary.withValues(
                          alpha: 0.12,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        type.initials,
                        style: theme.textTheme.labelLarge?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                    title: Text(
                      type.displayTitle,
                      style: theme.textTheme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      [
                        if (type.code.isNotEmpty) type.code,
                        '${type.entitlementDays.toInt()} days/yr',
                      ].join(' · '),
                    ),
                    trailing: isSelected
                        ? Icon(
                            Icons.check_circle_rounded,
                            color: theme.colorScheme.primary,
                          )
                        : null,
                    onTap: () => Navigator.of(context).pop(type),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
