import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';

import 'package:easy_localization/easy_localization.dart';

/// Result of a manager's overtime decision.
class OvertimeDecisionResult {
  const OvertimeDecisionResult({this.approvedHours, this.note});

  final double? approvedHours;
  final String? note;
}

/// Confirm dialog for approving/rejecting an overtime request. Approve
/// requires the approved hours; reject requires a reason. Returns `null`
/// when dismissed.
Future<OvertimeDecisionResult?> showOvertimeDecisionDialog(
  BuildContext context, {
  required OvertimeDecision decision,
  required String requesterLabel,
  double? defaultHours,
}) {
  return showDialog<OvertimeDecisionResult>(
    context: context,
    builder: (_) => _OvertimeDecisionDialog(
      decision: decision,
      requesterLabel: requesterLabel,
      defaultHours: defaultHours,
    ),
  );
}

class _OvertimeDecisionDialog extends HookWidget {
  const _OvertimeDecisionDialog({
    required this.decision,
    required this.requesterLabel,
    this.defaultHours,
  });

  final OvertimeDecision decision;
  final String requesterLabel;
  final double? defaultHours;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isReject = decision == OvertimeDecision.rejected;
    final accent = isReject ? const Color(0xFFDC2626) : const Color(0xFF16A34A);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final hoursController = useTextEditingController(
      text: isReject || defaultHours == null
          ? ''
          : (defaultHours == defaultHours!.roundToDouble()
                ? defaultHours!.toInt().toString()
                : defaultHours!.toStringAsFixed(1)),
    );
    final noteController = useTextEditingController();

    void submit() {
      if (!(formKey.currentState?.validate() ?? false)) return;
      final hours = isReject ? null : double.tryParse(hoursController.text);
      final note = noteController.text.trim();
      Navigator.of(context).pop(
        OvertimeDecisionResult(
          approvedHours: hours,
          note: note.isEmpty ? null : note,
        ),
      );
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          Icon(
            isReject
                ? Icons.do_disturb_on_outlined
                : Icons.check_circle_outline_rounded,
            color: accent,
          ),
          const SizedBox(width: 8),
          Text(
            isReject ? 'Reject overtime'.tr() : 'Approve overtime'.tr(),
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      content: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isReject
                  ? 'Reject the overtime request from {requester}? This cannot be undone.'
                        .tr(namedArgs: {'requester': requesterLabel})
                  : 'Approve the overtime request from {requester}?'.tr(
                      namedArgs: {'requester': requesterLabel},
                    ),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
              ),
            ),
            const SizedBox(height: 16),
            if (!isReject) ...[
              TextFormField(
                controller: hoursController,
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                decoration: InputDecoration(
                  labelText: 'Approved hours'.tr(),
                  hintText: 'e.g. 4'.tr(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixText: 'hrs'.tr(),
                ),
                validator: (value) {
                  final hours = double.tryParse(value?.trim() ?? '');
                  if (hours == null || hours <= 0) {
                    return 'Enter the approved hours'.tr();
                  }
                  return null;
                },
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: noteController,
                maxLines: 2,
                decoration: InputDecoration(
                  labelText: 'Note (optional)'.tr(),
                  hintText: 'Add a note for the employee'.tr(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ] else
              TextFormField(
                controller: noteController,
                maxLines: 3,
                minLines: 2,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Reason for rejection'.tr(),
                  hintText: 'e.g. Overtime was not pre-approved'.tr(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignLabelWithHint: true,
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'A reason is required to reject'.tr();
                  }
                  return null;
                },
              ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Cancel'.tr()),
        ),
        FilledButton.icon(
          onPressed: submit,
          style: FilledButton.styleFrom(backgroundColor: accent),
          icon: Icon(isReject ? Icons.close_rounded : Icons.check_rounded),
          label: Text(isReject ? 'Reject'.tr() : 'Approve'.tr()),
        ),
      ],
    );
  }
}
