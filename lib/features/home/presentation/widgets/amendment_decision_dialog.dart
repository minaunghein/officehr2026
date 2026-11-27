import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:easy_localization/easy_localization.dart';

/// Result of a reviewer's decision on an attendance amendment request.
class AmendmentDecisionResult {
  const AmendmentDecisionResult(this.status, this.reason);

  /// `APPROVED` or `REJECTED`, matching the `/api/v1/amendments/:id/status`
  /// request body.
  final String status;

  /// Rejection reason captured from the dialog; `null` for approvals.
  final String? reason;
}

/// Confirm dialog for approving/rejecting an attendance amendment request.
/// Reject requires a reason; approve is a plain confirmation. Returns `null`
/// when dismissed.
Future<AmendmentDecisionResult?> showAmendmentDecisionDialog(
  BuildContext context, {
  required bool isApprove,
  required String requesterLabel,
  required String typeLabel,
}) {
  return showDialog<AmendmentDecisionResult>(
    context: context,
    builder: (_) => _AmendmentDecisionDialog(
      isApprove: isApprove,
      requesterLabel: requesterLabel,
      typeLabel: typeLabel,
    ),
  );
}

class _AmendmentDecisionDialog extends HookWidget {
  const _AmendmentDecisionDialog({
    required this.isApprove,
    required this.requesterLabel,
    required this.typeLabel,
  });

  final bool isApprove;
  final String requesterLabel;
  final String typeLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final accent = isApprove
        ? const Color(0xFF16A34A)
        : const Color(0xFFDC2626);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final controller = useTextEditingController();

    void submit() {
      if (!isApprove && !(formKey.currentState?.validate() ?? false)) return;
      Navigator.of(context).pop(
        AmendmentDecisionResult(
          isApprove ? 'APPROVED' : 'REJECTED',
          isApprove ? null : controller.text.trim(),
        ),
      );
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          Icon(
            isApprove
                ? Icons.check_circle_outline_rounded
                : Icons.do_disturb_on_outlined,
            color: accent,
          ),
          const SizedBox(width: 8),
          Text(
            isApprove ? 'Approve request'.tr() : 'Reject request'.tr(),
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
              isApprove
                  ? 'Approve the "{type}" amendment from {requester}? The attendance record will be updated.'
                        .tr(
                          namedArgs: {
                            'type': typeLabel,
                            'requester': requesterLabel,
                          },
                        )
                  : 'Reject the "{type}" amendment from {requester}? This cannot be undone.'
                        .tr(
                          namedArgs: {
                            'type': typeLabel,
                            'requester': requesterLabel,
                          },
                        ),
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
              ),
            ),
            if (!isApprove) ...[
              const SizedBox(height: 16),
              TextFormField(
                controller: controller,
                maxLines: 3,
                minLines: 2,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: 'Reason (required)'.tr(),
                  hintText: 'Explain why this request is rejected'.tr(),
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
          icon: Icon(isApprove ? Icons.check_rounded : Icons.close_rounded),
          label: Text(isApprove ? 'Approve'.tr() : 'Reject'.tr()),
        ),
      ],
    );
  }
}
