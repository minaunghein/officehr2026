import 'package:flutter/material.dart';
import 'package:office_hr/core/constants/app_sizes.dart';
import 'package:office_hr/features/home/domain/entities/attendance_record.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_punch_timeline.dart';
import 'package:office_hr/features/home/presentation/widgets/attendance_status.dart';
import 'package:office_hr/shared/date_formatter.dart';

/// Renders the attendance summary for a single selected [date].
class AttendanceDayDetail extends StatelessWidget {
  const AttendanceDayDetail({
    super.key,
    required this.date,
    required this.attendance,
  });

  final DateTime date;
  final TodayAttendance? attendance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _fullDate(date),
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    _weekday(date),
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.55,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AttendanceRecordStatusChip(attendance: attendance),
          ],
        ),
        const SizedBox(height: 16),
        _SummaryGrid(attendance: attendance),
        if (attendance?.attendanceRecord != null) ...[
          const SizedBox(height: 16),
          _ScheduleBreakdown(record: attendance!.attendanceRecord!),
        ],
        const SizedBox(height: 20),
        Text(
          'PUNCH TIMELINE',
          style: theme.textTheme.labelSmall?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: 0.6,
            color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const SizedBox(height: 10),
        AttendancePunchTimeline(punches: attendance?.punches ?? const []),
      ],
    );
  }
}

class _SummaryGrid extends StatelessWidget {
  const _SummaryGrid({required this.attendance});

  final TodayAttendance? attendance;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final attendance = this.attendance;

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              _InfoTile(
                icon: Icons.login_rounded,
                color: const Color(0xFF16A34A),
                label: 'Clock In',
                value: formatAttendanceTime(attendance?.clockIn),
              ),
              _verticalDivider(theme),
              _InfoTile(
                icon: Icons.logout_rounded,
                color: const Color(0xFFDC2626),
                label: 'Clock Out',
                value: formatAttendanceTime(attendance?.clockOut),
              ),
            ],
          ),
          Divider(
            height: 1,
            color: theme.colorScheme.outline.withValues(alpha: 0.15),
          ),
          Row(
            children: [
              _InfoTile(
                icon: Icons.timer_outlined,
                color: const Color(0xFF2563EB),
                label: 'Work',
                value: _duration(attendance?.workDuration),
              ),
              _verticalDivider(theme),
              _InfoTile(
                icon: Icons.free_breakfast_outlined,
                color: const Color(0xFFD97706),
                label: 'Break',
                value: _duration(attendance?.breakDuration),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _verticalDivider(ThemeData theme) => VerticalDivider(
    width: 1,
    thickness: 1,
    color: theme.colorScheme.outline.withValues(alpha: 0.15),
  );
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({
    required this.icon,
    required this.color,
    required this.label,
    required this.value,
  });

  final IconData icon;
  final Color color;
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
        child: Row(
          children: [
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.12),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(icon, color: color, size: 20),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: theme.textTheme.labelSmall?.copyWith(
                      color: theme.colorScheme.onSurface.withValues(
                        alpha: 0.55,
                      ),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    value,
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ScheduleBreakdown extends StatelessWidget {
  const _ScheduleBreakdown({required this.record});

  final AttendanceRecord record;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withValues(
          alpha: 0.35,
        ),
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
        border: Border.all(
          color: theme.colorScheme.outline.withValues(alpha: 0.15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SCHEDULE',
            style: theme.textTheme.labelSmall?.copyWith(
              fontWeight: FontWeight.w800,
              letterSpacing: 0.6,
              color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
            ),
          ),
          const SizedBox(height: 12),
          _row(
            context,
            'Scheduled',
            '${formatAttendanceTime(record.scheduled?.clockIn)} - ${formatAttendanceTime(record.scheduled?.clockOut)}',
          ),
          _row(
            context,
            'Actual',
            '${formatAttendanceTime(record.actual?.clockIn)} - ${formatAttendanceTime(record.actual?.clockOut)}',
          ),
          if (record.adjustment?.clockIn != null ||
              record.adjustment?.clockOut != null)
            _row(
              context,
              'Adjustment',
              '${formatAttendanceTime(record.adjustment?.clockIn)} - ${formatAttendanceTime(record.adjustment?.clockOut)}',
            ),
          const SizedBox(height: 6),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _Pill(label: 'Late', minutes: record.lateMinutes),
              _Pill(label: 'Early leave', minutes: record.earlyLeaveMinutes),
              _Pill(label: 'Overtime', minutes: record.overtimeMinutes),
            ],
          ),
        ],
      ),
    );
  }

  Widget _row(BuildContext context, String label, String value) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(
            width: 96,
            child: Text(
              label,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.55),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Pill extends StatelessWidget {
  const _Pill({required this.label, required this.minutes});

  final String label;
  final int minutes;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isPositive = minutes > 0;
    final color = isPositive
        ? const Color(0xFFDC2626)
        : theme.colorScheme.onSurface.withValues(alpha: 0.45);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        '$label: ${minutes}m',
        style: theme.textTheme.labelSmall?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

String _duration(int? minutes) {
  if (minutes == null || minutes <= 0) return '--';
  return formatDurationText(Duration(minutes: minutes));
}

String _fullDate(DateTime date) {
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
  return '${date.day} ${months[date.month - 1]} ${date.year}';
}

String _weekday(DateTime date) {
  const weekdays = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  return weekdays[date.weekday - 1];
}
