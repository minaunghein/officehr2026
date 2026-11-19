import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';

/// A period selector for the payslip list. Tapping opens a date-range picker;
/// [range] is `null` when no filter is applied (showing all payslips).
class PayslipPeriodFilter extends StatelessWidget {
  const PayslipPeriodFilter({
    super.key,
    required this.range,
    required this.onTap,
    required this.onClear,
  });

  final DateTimeRange? range;
  final VoidCallback onTap;
  final VoidCallback onClear;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final filtered = range != null;

    return Material(
      color: theme.cardColor,
      borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            border: Border.all(
              color: theme.colorScheme.outline.withValues(alpha: 0.18),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
          child: Row(
            children: [
              Icon(
                Icons.calendar_month_outlined,
                size: 22,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      filtered ? _formatRange(range!) : 'All periods',
                      style: theme.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      filtered
                          ? 'Filter by salary period'
                          : 'Tap to choose a range',
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.55,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (filtered)
                IconButton(
                  onPressed: onClear,
                  tooltip: 'Clear filter',
                  icon: const Icon(Icons.close_rounded, size: 18),
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                )
              else
                Icon(
                  Icons.chevron_right_rounded,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.3),
                ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatRange(DateTimeRange range) {
    return '${_shortDate(range.start)} – ${_shortDate(range.end)}';
  }

  String _shortDate(DateTime date) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }
}
