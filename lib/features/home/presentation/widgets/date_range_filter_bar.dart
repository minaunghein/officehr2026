import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';

import 'package:easy_localization/easy_localization.dart';

/// Card-styled date range filter control: a soft calendar badge, a
/// `DATE RANGE` caption with the selected range (or `All dates`), and an
/// inline clear button. Tapping opens the platform date range picker.
class DateRangeFilterBar extends StatelessWidget {
  const DateRangeFilterBar({
    super.key,
    required this.start,
    required this.end,
    required this.onChanged,
  });

  final DateTime? start;
  final DateTime? end;
  final void Function(DateTime? start, DateTime? end) onChanged;

  Future<void> _pickRange(BuildContext context) async {
    final now = DateTime.now();
    final picked = await showDateRangePicker(
      context: context,
      firstDate: DateTime(now.year - 2),
      lastDate: now,
      helpText: 'Filter by date range'.tr(),
      initialDateRange: start != null && end != null
          ? DateTimeRange(start: start!, end: end!)
          : null,
    );
    if (picked == null) return;
    onChanged(picked.start, picked.end);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasRange = start != null && end != null;

    return Material(
      color: theme.cardColor,
      borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
      child: InkWell(
        onTap: () => _pickRange(context),
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
        child: Container(
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusMd),
            border: Border.all(
              color: hasRange
                  ? theme.colorScheme.primary.withValues(alpha: 0.45)
                  : theme.colorScheme.outline.withValues(alpha: 0.18),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 34,
                height: 34,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(9),
                ),
                child: Icon(
                  Icons.date_range_rounded,
                  size: 17,
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DATE RANGE'.tr(),
                      style: theme.textTheme.labelLarge?.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.8,
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.45,
                        ),
                      ),
                    ),
                    const SizedBox(height: 1),
                    Text(
                      hasRange ? _formatRange(start!, end!) : 'All dates'.tr(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: hasRange
                            ? theme.colorScheme.primary
                            : theme.colorScheme.onSurface.withValues(
                                alpha: 0.7,
                              ),
                      ),
                    ),
                  ],
                ),
              ),
              if (hasRange)
                IconButton(
                  tooltip: 'Clear date filter'.tr(),
                  visualDensity: VisualDensity.compact,
                  onPressed: () => onChanged(null, null),
                  icon: Icon(
                    Icons.close_rounded,
                    size: 16,
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                  ),
                )
              else
                Icon(
                  Icons.unfold_more_rounded,
                  size: 18,
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.4),
                ),
            ],
          ),
        ),
      ),
    );
  }

  static const _months = [
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

  String _formatRange(DateTime start, DateTime end) {
    final startLabel = '${start.day} ${_months[start.month - 1]}';
    final endLabel = '${end.day} ${_months[end.month - 1]}';
    if (start.year == end.year) {
      return '$startLabel – $endLabel ${end.year}';
    }
    return '$startLabel ${start.year} – $endLabel ${end.year}';
  }
}
