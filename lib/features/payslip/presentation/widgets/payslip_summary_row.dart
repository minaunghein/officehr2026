import 'package:flutter/material.dart';

/// A bold total line (Gross, Total deductions, Net pay) shown at the end of a
/// payslip section.
class PayslipSummaryRow extends StatelessWidget {
  const PayslipSummaryRow({
    super.key,
    required this.label,
    required this.value,
    this.highlight = false,
    this.emphasize = false,
  });

  final String label;
  final String value;

  /// Draws a top divider, used to separate totals from line items.
  final bool highlight;

  /// Renders the amount in the success color (used for Net pay).
  final bool emphasize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final amountColor = emphasize
        ? const Color(0xFF16A34A)
        : theme.colorScheme.onSurface;

    return Column(
      children: [
        if (highlight) ...[
          const SizedBox(height: 4),
          Divider(
            height: 1,
            color: theme.colorScheme.outline.withValues(alpha: 0.2),
          ),
        ],
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  label,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: theme.colorScheme.onSurface,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                value,
                style: theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                  color: amountColor,
                  fontFeatures: const [FontFeature.tabularFigures()],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
