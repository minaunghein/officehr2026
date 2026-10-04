import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_punch_timeline.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/shared/date_formatter.dart';

/// Renders attendance records for a selected date range.
class AttendanceRangeList extends StatelessWidget {
  const AttendanceRangeList({super.key, required this.records});

  final List<TodayAttendance> records;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (records.isEmpty) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.15),
          ),
        ),
        child: Column(
          children: [
            Icon(
              Icons.event_busy_rounded,
              size: 44,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.25),
            ),
            const SizedBox(height: 12),
            Text(
              'No attendance in this range',
              style: theme.textTheme.titleSmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
              ),
            ),
          ],
        ),
      );
    }

    final totalWorkMinutes = records.fold<int>(
      0,
      (sum, record) => sum + record.workDuration,
    );
    final presentDays = records
        .where((record) => record.clockIn != null && record.clockIn!.isNotEmpty)
        .length;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withValues(alpha: 0.08),
            borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          ),
          child: Row(
            children: [
              _SummaryItem(
                label: 'PRESENT',
                value: '$presentDays',
                theme: theme,
              ),
              _divider(theme),
              _SummaryItem(
                label: 'TOTAL HOURS',
                value: _duration(totalWorkMinutes),
                theme: theme,
              ),
              _divider(theme),
              _SummaryItem(
                label: 'DAYS',
                value: '${records.length}',
                theme: theme,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        for (final record in records) ...[
          _RangeRecordCard(record: record),
          const SizedBox(height: 12),
        ],
      ],
    );
  }

  Widget _divider(ThemeData theme) => SizedBox(
    height: 34,
    child: VerticalDivider(
      width: 24,
      thickness: 1,
      color: theme.colorScheme.outline.withValues(alpha: 0.2),
    ),
  );
}

class _SummaryItem extends StatelessWidget {
  const _SummaryItem({
    required this.label,
    required this.value,
    required this.theme,
  });

  final String label;
  final String value;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w800,
              color: theme.colorScheme.primary,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 0.4,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
            ),
          ),
        ],
      ),
    );
  }
}

class _RangeRecordCard extends StatelessWidget {
  const _RangeRecordCard({required this.record});

  final TodayAttendance record;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final hasPunches = record.punches.isNotEmpty;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      clipBehavior: Clip.hardEdge,
      child: Theme(
        data: theme.copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          childrenPadding: EdgeInsets.zero,
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          title: Row(
            children: [
              Expanded(
                child: Text(
                  record.date == null
                      ? 'Unknown date'
                      : formatDateString(record.date!.toIso8601String()),
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              AttendanceRecordStatusChip(attendance: record, dense: true),
            ],
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                _TimeChip(
                  icon: Icons.login_rounded,
                  value: formatAttendanceTime(record.clockIn),
                ),
                const SizedBox(width: 8),
                _TimeChip(
                  icon: Icons.logout_rounded,
                  value: formatAttendanceTime(record.clockOut),
                ),
                const Spacer(),
                Text(
                  _duration(record.workDuration),
                  style: theme.textTheme.labelLarge?.copyWith(
                    fontWeight: FontWeight.w800,
                    color: theme.colorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
          children: [
            if (hasPunches)
              AttendancePunchTimeline(punches: record.punches)
            else
              Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  'No punches recorded',
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _TimeChip extends StatelessWidget {
  const _TimeChip({required this.icon, required this.value});

  final IconData icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          size: 14,
          color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: theme.textTheme.bodySmall?.copyWith(
            fontWeight: FontWeight.w600,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.8),
          ),
        ),
      ],
    );
  }
}

String _duration(int minutes) {
  if (minutes <= 0) return '--';
  return formatDurationText(Duration(minutes: minutes));
}
