import 'package:flutter/material.dart';
import 'package:office_hr/features/home/domain/entities/today_attendance.dart';

/// Colors used consistently across the attendance calendar and detail views.
Color attendanceStatusColor(String? status, ThemeData theme) {
  switch (status?.toUpperCase()) {
    case 'PRESENT':
      return const Color(0xFF16A34A);
    case 'LATE':
      return const Color(0xFFD97706);
    case 'ABSENT':
      return const Color(0xFFDC2626);
    case 'HALF_DAY':
      return const Color(0xFF7C3AED);
    case 'ON_LEAVE':
      return const Color(0xFF0284C7);
    case 'HOLIDAY':
      return const Color(0xFFDB2777);
    case 'REST_DAY':
      return const Color(0xFF64748B);
    default:
      return theme.colorScheme.onSurface.withValues(alpha: 0.45);
  }
}

/// Turns a backend status such as `HALF_DAY` into a readable `Half Day`.
String attendanceStatusLabel(String? status) {
  if (status == null || status.trim().isEmpty) return 'No Record';
  return status
      .split('_')
      .where((word) => word.isNotEmpty)
      .map((word) => '${word[0]}${word.substring(1).toLowerCase()}')
      .join(' ');
}

bool _hasValue(String? value) => value != null && value.trim().isNotEmpty;

bool _isInProgress(TodayAttendance attendance) {
  final status = attendance.status.toUpperCase();
  final statusSaysNotClockedIn = status.isEmpty || status == 'NOT_CLOCKED_IN';
  return statusSaysNotClockedIn &&
      _hasValue(attendance.clockIn) &&
      !_hasValue(attendance.clockOut);
}

/// Resolves the label for a day, correcting backend `NOT_CLOCKED_IN` statuses
/// for days that already have a clock-in but no clock-out yet.
String resolvedAttendanceStatusLabel(TodayAttendance? attendance) {
  if (attendance == null) return 'No Record';
  if (_isInProgress(attendance)) return 'Clocked In';
  return attendanceStatusLabel(attendance.status);
}

/// Resolves the color matching [resolvedAttendanceStatusLabel].
Color resolvedAttendanceStatusColor(
  TodayAttendance? attendance,
  ThemeData theme,
) {
  if (attendance == null) return attendanceStatusColor(null, theme);
  if (_isInProgress(attendance)) return const Color(0xFF2563EB);
  return attendanceStatusColor(attendance.status, theme);
}

class AttendanceStatusChip extends StatelessWidget {
  const AttendanceStatusChip({
    super.key,
    required this.status,
    this.dense = false,
  });

  final String? status;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _StatusChip(
      label: attendanceStatusLabel(status),
      color: attendanceStatusColor(status, theme),
      dense: dense,
    );
  }
}

/// Status chip that derives a meaningful label from the day's punches, so a
/// clocked-in day is never shown as `Not Clocked In`.
class AttendanceRecordStatusChip extends StatelessWidget {
  const AttendanceRecordStatusChip({
    super.key,
    required this.attendance,
    this.dense = false,
  });

  final TodayAttendance? attendance;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return _StatusChip(
      label: resolvedAttendanceStatusLabel(attendance),
      color: resolvedAttendanceStatusColor(attendance, theme),
      dense: dense,
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({
    required this.label,
    required this.color,
    required this.dense,
  });

  final String label;
  final Color color;
  final bool dense;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: dense ? 8 : 12,
        vertical: dense ? 3 : 6,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: color.withValues(alpha: 0.3)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: dense ? 6 : 8,
            height: dense ? 6 : 8,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          SizedBox(width: dense ? 5 : 7),
          Text(
            label,
            style: theme.textTheme.labelSmall?.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
