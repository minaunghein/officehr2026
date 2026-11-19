import 'package:flutter/material.dart';

/// A single line item in a payslip breakdown: a label with its amount aligned
/// to the trailing edge. Zero amounts render muted so the table stays scannable.
class PayslipAmountRow extends StatelessWidget {
  const PayslipAmountRow({
    super.key,
    required this.label,
    required this.value,
    this.isMuted = false,
  });

  final String label;
  final String value;
  final bool isMuted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labelColor = theme.colorScheme.onSurface;
    // Zero amounts keep the label fully readable and only soften the value.
    final valueColor = isMuted
        ? theme.colorScheme.onSurface.withValues(alpha: 0.55)
        : theme.colorScheme.onSurface;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: Row(
        children: [
          Expanded(
            child: Text(
              label,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: labelColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(width: 16),
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              color: valueColor,
              fontWeight: isMuted ? FontWeight.w500 : FontWeight.w700,
              fontFeatures: const [FontFeature.tabularFigures()],
            ),
          ),
        ],
      ),
    );
  }
}
