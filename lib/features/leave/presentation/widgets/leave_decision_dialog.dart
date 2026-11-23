import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';

import 'package:easy_localization/easy_localization.dart';

/// Result of a manager's decision.
class LeaveDecisionResult {
  const LeaveDecisionResult(this.decision, this.reason);

  final LeaveDecision decision;
  final String? reason;
}

/// Shows a confirm dialog for approving/rejecting a leave request. Reject
/// requires a reason; approve optionally captures a note. Returns `null` when
/// dismissed.
Future<LeaveDecisionResult?> showLeaveDecisionDialog(
  BuildContext context, {
  required LeaveDecision decision,
  required String requesterLabel,
}) {
  return showDialog<LeaveDecisionResult>(
    context: context,
    builder: (_) => _LeaveDecisionDialog(
      decision: decision,
      requesterLabel: requesterLabel,
    ),
  );
}

class _LeaveDecisionDialog extends HookWidget {
  const _LeaveDecisionDialog({
    required this.decision,
    required this.requesterLabel,
  });

  final LeaveDecision decision;
  final String requesterLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isReject = decision == LeaveDecision.rejected;
    final accent = isReject ? const Color(0xFFDC2626) : const Color(0xFF16A34A);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final controller = useTextEditingController();
    final submitting = useState(false);

    Future<void> submit() async {
      if (!(formKey.currentState?.validate() ?? false)) return;
      submitting.value = true;
      Navigator.of(
        context,
      ).pop(LeaveDecisionResult(decision, controller.text.trim()));
    }

    return PopScope(
      canPop: !submitting.value,
      child: AlertDialog(
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
              isReject ? 'Reject leave'.tr() : 'Approve leave'.tr(),
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
                    ? 'Reject the leave request for {requester}? This cannot be undone.'
                          .tr(namedArgs: {'requester': requesterLabel})
                    : 'Approve the leave request for {requester}?'.tr(
                        namedArgs: {'requester': requesterLabel},
                      ),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: controller,
                enabled: !submitting.value,
                maxLines: 3,
                minLines: 2,
                autofocus: isReject,
                decoration: InputDecoration(
                  labelText: isReject
                      ? 'Reason for rejection'.tr()
                      : 'Note (optional)'.tr(),
                  hintText: isReject
                      ? 'e.g. Short-staffed during this period'.tr()
                      : 'Add a note for the employee'.tr(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignLabelWithHint: true,
                ),
                validator: (value) {
                  if (isReject && (value == null || value.trim().isEmpty)) {
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
            onPressed: submitting.value
                ? null
                : () => Navigator.of(context).pop(),
            child: Text('Cancel'.tr()),
          ),
          FilledButton.icon(
            onPressed: submitting.value ? null : submit,
            style: FilledButton.styleFrom(backgroundColor: accent),
            icon: submitting.value
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Colors.white,
                    ),
                  )
                : Icon(isReject ? Icons.close_rounded : Icons.check_rounded),
            label: Text(isReject ? 'Reject'.tr() : 'Approve'.tr()),
          ),
        ],
      ),
    );
  }
}
