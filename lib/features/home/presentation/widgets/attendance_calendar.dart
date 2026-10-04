import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';

/// A large, enterprise-styled month calendar used to pick an attendance date.
///
/// [markers] maps a `YYYY-MM-DD` key to a color so recorded days can be
/// highlighted with a status dot.
class AttendanceCalendar extends StatelessWidget {
  const AttendanceCalendar({
    super.key,
    required this.focusedMonth,
    required this.selectedDate,
    required this.onSelectDate,
    required this.onPreviousMonth,
    required this.onNextMonth,
    this.markers = const {},
  });

  final DateTime focusedMonth;
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onSelectDate;
  final VoidCallback onPreviousMonth;
  final VoidCallback onNextMonth;
  final Map<String, Color> markers;

  static const _weekdayLabels = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final firstOfMonth = DateTime(focusedMonth.year, focusedMonth.month, 1);
    final daysInMonth = DateTime(
      focusedMonth.year,
      focusedMonth.month + 1,
      0,
    ).day;
    final leading = firstOfMonth.weekday - DateTime.monday;
    final totalCells = leading + daysInMonth;
    final rowCount = (totalCells / 7).ceil();

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 12),
      child: Column(
        children: [
          _buildHeader(context),
          const SizedBox(height: 16),
          Row(
            children: [
              for (final label in _weekdayLabels)
                Expanded(
                  child: Center(
                    child: Text(
                      label,
                      style: theme.textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.45,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 8),
          for (int row = 0; row < rowCount; row++)
            Row(
              children: [
                for (int col = 0; col < 7; col++)
                  Expanded(
                    child: _buildCell(
                      context,
                      leading: leading,
                      daysInMonth: daysInMonth,
                      index: row * 7 + col,
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            _monthLabel(focusedMonth),
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        _NavIconButton(
          icon: Icons.chevron_left_rounded,
          onTap: onPreviousMonth,
        ),
        const SizedBox(width: 4),
        _NavIconButton(icon: Icons.chevron_right_rounded, onTap: onNextMonth),
      ],
    );
  }

  Widget _buildCell(
    BuildContext context, {
    required int leading,
    required int daysInMonth,
    required int index,
  }) {
    final dayNumber = index - leading + 1;
    if (dayNumber < 1 || dayNumber > daysInMonth) {
      return const SizedBox(height: 44);
    }

    final theme = Theme.of(context);
    final date = DateTime(focusedMonth.year, focusedMonth.month, dayNumber);
    final key = formatApiDate(date);
    final isSelected =
        selectedDate != null && formatApiDate(selectedDate!) == key;
    final isToday = formatApiDate(DateTime.now()) == key;
    final markerColor = markers[key];

    final Color textColor;
    if (isSelected) {
      textColor = theme.colorScheme.onPrimary;
    } else if (isToday) {
      textColor = theme.colorScheme.primary;
    } else {
      textColor = theme.colorScheme.onSurface.withValues(alpha: 0.85);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: InkWell(
        onTap: () => onSelectDate(date),
        borderRadius: BorderRadius.circular(12),
        child: SizedBox(
          height: 44,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 34,
                height: 34,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? theme.colorScheme.primary : null,
                  shape: BoxShape.circle,
                  border: isToday && !isSelected
                      ? Border.all(color: theme.colorScheme.primary, width: 1.5)
                      : null,
                ),
                child: Text(
                  '$dayNumber',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: isSelected || isToday
                        ? FontWeight.w800
                        : FontWeight.w500,
                    color: textColor,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Container(
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                  color: markerColor ?? Colors.transparent,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _monthLabel(DateTime date) {
    const months = [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ];
    return '${months[date.month - 1]} ${date.year}';
  }
}

class _NavIconButton extends StatelessWidget {
  const _NavIconButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Icon(icon, size: 20, color: theme.colorScheme.onSurface),
        ),
      ),
    );
  }
}
