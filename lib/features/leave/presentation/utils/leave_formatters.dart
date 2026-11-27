import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/shared/date_formatter.dart';

String formatLeaveDate(DateTime? date) {
  if (date == null) return '-';
  return displayDate(date);
}

String formatLeaveDateFromIso(String? iso) {
  return formatLeaveDate(parseLocalDateTime(iso));
}

String formatLeaveDateTimeFromIso(String? iso) {
  final date = parseLocalDateTime(iso);
  if (date == null) return '-';
  return formatDateTime(date);
}

String formatLeaveDateRange(String? startIso, String? endIso) {
  final start = parseLocalDateTime(startIso);
  final end = parseLocalDateTime(endIso);
  if (start == null && end == null) return '-';
  if (start == null) return formatLeaveDate(end);
  if (end == null || _isSameDay(start, end)) return formatLeaveDate(start);

  final sameMonth = start.month == end.month && start.year == end.year;
  if (sameMonth) {
    return '${start.day} - ${end.day} ${monthLabel(start.month)} '
        '${start.year}';
  }
  return '${formatLeaveDate(start)} - ${formatLeaveDate(end)}';
}

bool _isSameDay(DateTime a, DateTime b) =>
    a.year == b.year && a.month == b.month && a.day == b.day;

String formatDays(double days) {
  if (days == days.roundToDouble()) {
    final whole = days.toInt();
    return whole == 1
        ? '1 day'.tr()
        : '{count} days'.tr(namedArgs: {'count': '$whole'});
  }
  return '{count} days'.tr(namedArgs: {'count': days.toStringAsFixed(1)});
}

String leaveStatusLabel(LeaveStatus status) {
  switch (status) {
    case LeaveStatus.pending:
      return 'Pending'.tr();
    case LeaveStatus.approved:
      return 'Approved'.tr();
    case LeaveStatus.rejected:
      return 'Rejected'.tr();
    case LeaveStatus.cancelled:
      return 'Cancelled'.tr();
    case LeaveStatus.unknown:
      return 'Unknown'.tr();
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
