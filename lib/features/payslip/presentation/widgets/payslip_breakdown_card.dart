import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';

/// A titled panel that groups a set of money line items with their totals.
/// Used for the Earnings and Deductions breakdowns on a payslip.
class PayslipBreakdownCard extends StatelessWidget {
  const PayslipBreakdownCard({
    super.key,
    required this.title,
    required this.icon,
    required this.items,
    required this.totals,
    this.accent,
  });

  final String title;
  final IconData icon;
  final List<Widget> items;
  final List<Widget> totals;
  final Color? accent;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = accent ?? theme.colorScheme.primary;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.18),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 14, 16, 6),
            child: Row(
              children: [
                Icon(icon, size: 18, color: color),
                const SizedBox(width: 8),
                Text(
                  title.toUpperCase(),
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    letterSpacing: 0.6,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 14),
            child: Column(children: [...items, ...totals]),
          ),
        ],
      ),
    );
  }
}
