import 'package:flutter/material.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';

const _shortMonths = [
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

String formatLeaveDate(DateTime? date) {
  if (date == null) return '-';
  return '${date.day} ${_shortMonths[date.month - 1]} ${date.year}';
}

String formatLeaveDateFromIso(String? iso) {
  return formatLeaveDate(parseLocalDateTime(iso));
}

String formatLeaveDateRange(String? startIso, String? endIso) {
  final start = parseLocalDateTime(startIso);
  final end = parseLocalDateTime(endIso);
  if (start == null && end == null) return '-';
  if (start == null) return formatLeaveDate(end);
  if (end == null || _isSameDay(start, end)) return formatLeaveDate(start);

  final sameMonth = start.month == end.month && start.year == end.year;
  if (sameMonth) {
    return '${start.day} - ${end.day} ${_shortMonths[start.month - 1]} '
        '${start.year}';
  }
  return '${formatLeaveDate(start)} - ${formatLeaveDate(end)}';
}

bool _isSameDay(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;

String formatDays(double days) {
  if (days == days.roundToDouble()) {
    final whole = days.toInt();
    return '$whole ${whole == 1 ? 'day' : 'days'}';
  }
  return '${days.toStringAsFixed(1)} days';
}

String leaveStatusLabel(LeaveStatus status) {
  switch (status) {
    case LeaveStatus.pending:
      return 'Pending';
    case LeaveStatus.approved:
      return 'Approved';
    case LeaveStatus.rejected:
      return 'Rejected';
    case LeaveStatus.cancelled:
      return 'Cancelled';
    case LeaveStatus.unknown:
      return 'Unknown';
  }
}

Color leaveStatusColor(LeaveStatus status) {
  switch (status) {
    case LeaveStatus.pending:
      return const Color(0xFFD97706);
    case LeaveStatus.approved:
      return const Color(0xFF16A34A);
    case LeaveStatus.rejected:
      return const Color(0xFFDC2626);
    case LeaveStatus.cancelled:
      return const Color(0xFF64748B);
    case LeaveStatus.unknown:
      return const Color(0xFF64748B);
  }
}

Color leaveStatusBackground(LeaveStatus status) {
  switch (status) {
    case LeaveStatus.pending:
      return const Color(0xFFFEF3C7);
    case LeaveStatus.approved:
      return const Color(0xFFDCFCE7);
    case LeaveStatus.rejected:
      return const Color(0xFFFEE2E2);
    case LeaveStatus.cancelled:
      return const Color(0xFFF1F5F9);
    case LeaveStatus.unknown:
      return const Color(0xFFF1F5F9);
  }
}
