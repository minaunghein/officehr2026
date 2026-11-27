import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';

import 'package:easy_localization/easy_localization.dart';

/// Result of a reviewer's decision on a clock request.
class ClockRequestDecisionResult {
  const ClockRequestDecisionResult(this.decision, this.note);

  final ClockRequestDecision decision;
  final String? note;
}

/// Confirm dialog for approving/rejecting a clock request. Reject requires a
/// note; approve optionally captures one. Returns `null` when dismissed.
Future<ClockRequestDecisionResult?> showClockRequestDecisionDialog(
  BuildContext context, {
  required ClockRequestDecision decision,
  required String requesterLabel,
  required String punchLabel,
}) {
  return showDialog<ClockRequestDecisionResult>(
    context: context,
    builder: (_) => _ClockRequestDecisionDialog(
      decision: decision,
      requesterLabel: requesterLabel,
      punchLabel: punchLabel,
    ),
  );
}

class _ClockRequestDecisionDialog extends HookWidget {
  const _ClockRequestDecisionDialog({
    required this.decision,
    required this.requesterLabel,
    required this.punchLabel,
  });

  final ClockRequestDecision decision;
  final String requesterLabel;
  final String punchLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isReject = decision == ClockRequestDecision.rejected;
    final accent = isReject ? const Color(0xFFDC2626) : const Color(0xFF16A34A);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final controller = useTextEditingController();
    final submitting = useState(false);

    void submit() {
      if (!(formKey.currentState?.validate() ?? false)) return;
      submitting.value = true;
      Navigator.of(
        context,
      ).pop(ClockRequestDecisionResult(decision, controller.text.trim()));
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
            isReject ? 'Reject request'.tr() : 'Approve request'.tr(),
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
                  ? 'Reject the {punch} request from {requester}? This cannot be undone.'
                        .tr(
                          namedArgs: {
                            'punch': punchLabel,
                            'requester': requesterLabel,
                          },
                        )
                  : 'Approve the {punch} request from {requester}? The punch will be recorded.'
                        .tr(
                          namedArgs: {
                            'punch': punchLabel,
                            'requester': requesterLabel,
                          },
                        ),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: controller,
              maxLines: 3,
              minLines: 2,
              autofocus: isReject,
              decoration: InputDecoration(
                labelText: isReject
                    ? 'Note (required)'.tr()
                    : 'Note (optional)'.tr(),
                hintText: isReject
                    ? 'Explain why this punch is rejected'.tr()
                    : 'Add a note for the employee'.tr(),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                alignLabelWithHint: true,
              ),
              validator: (value) {
                if (isReject && (value == null || value.trim().isEmpty)) {
                  return 'A note is required to reject'.tr();
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
