import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:easy_localization/easy_localization.dart';

/// Result of the owner's cancellation confirmation.
class ClockRequestCancelResult {
  const ClockRequestCancelResult(this.note);

  final String? note;
}

/// Confirm dialog for cancelling one's own pending clock request. An
/// optional note can be attached. Returns `null` when dismissed.
Future<ClockRequestCancelResult?> showClockRequestCancelDialog(
  BuildContext context, {
  required String punchLabel,
}) {
  return showDialog<ClockRequestCancelResult>(
    context: context,
    builder: (_) => _ClockRequestCancelDialog(punchLabel: punchLabel),
  );
}

class _ClockRequestCancelDialog extends HookWidget {
  const _ClockRequestCancelDialog({required this.punchLabel});

  final String punchLabel;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    const accent = Color(0xFFB91C1C);
    final controller = useTextEditingController();

    void submit() {
      Navigator.of(
        context,
      ).pop(ClockRequestCancelResult(controller.text.trim()));
    }

    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      title: Row(
        children: [
          const Icon(Icons.cancel_outlined, color: accent),
          const SizedBox(width: 8),
          Text(
            'Cancel request'.tr(),
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cancel your pending {punch} request? This cannot be undone.'.tr(
              namedArgs: {'punch': punchLabel},
            ),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.75),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: controller,
            maxLines: 2,
            minLines: 2,
            decoration: InputDecoration(
              labelText: 'Note (optional)'.tr(),
              hintText: 'Add a note for your manager'.tr(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              alignLabelWithHint: true,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('Keep It'.tr()),
        ),
        FilledButton(
          onPressed: submit,
          style: FilledButton.styleFrom(backgroundColor: accent),
          child: Text('Cancel Request'.tr()),
        ),
      ],
    );
  }
}
