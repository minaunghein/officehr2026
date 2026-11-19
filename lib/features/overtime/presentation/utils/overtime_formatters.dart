import 'package:flutter/material.dart';
import 'package:office_hr/features/overtime/domain/entities/overtime_request.dart';

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

String overtimeStatusLabel(OvertimeStatus status) => status.label;

Color overtimeStatusColor(OvertimeStatus status) {
  return switch (status) {
    OvertimeStatus.pending => const Color(0xFFD97706),
    OvertimeStatus.approved => const Color(0xFF16A34A),
    OvertimeStatus.rejected => const Color(0xFFDC2626),
    OvertimeStatus.cancelled => const Color(0xFF64748B),
    OvertimeStatus.unknown => const Color(0xFF64748B),
  };
}

Color overtimeStatusBackground(OvertimeStatus status) {
  return switch (status) {
    OvertimeStatus.pending => const Color(0xFFFEF3C7),
    OvertimeStatus.approved => const Color(0xFFDCFCE7),
    OvertimeStatus.rejected => const Color(0xFFFEE2E2),
    OvertimeStatus.cancelled => const Color(0xFFF1F5F9),
    OvertimeStatus.unknown => const Color(0xFFF1F5F9),
  };
}

String formatOvertimeDate(DateTime? date) {
  if (date == null) return '-';
  return '${date.day} ${_shortMonths[date.month - 1]} ${date.year}';
}

/// Formats an API `HH:mm` value as `06:00 PM`.
String formatOvertimeClock(String? time) {
  final value = time?.trim() ?? '';
  final parts = value.split(':');
  if (parts.length < 2) return value.isEmpty ? '--:--' : value;

  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  if (hour == null || minute == null) return value;

  final hour12 = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
  final amPm = hour < 12 ? 'AM' : 'PM';
  final hh = hour12.toString().padLeft(2, '0');
  final mm = minute.toString().padLeft(2, '0');
  return '$hh:$mm $amPm';
}

/// Requested duration in hours from `HH:mm` start/end times (same-day).
double overtimeRequestedHours(String? start, String? end) {
  final startMinutes = _minutesOf(start);
  final endMinutes = _minutesOf(end);
  if (startMinutes == null || endMinutes == null) return 0;
  final diff = endMinutes - startMinutes;
  return diff <= 0 ? 0 : diff / 60.0;
}

int? _minutesOf(String? time) {
  final parts = time?.trim().split(':') ?? const [];
  if (parts.length < 2) return null;
  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  if (hour == null || minute == null) return null;
  return hour * 60 + minute;
}

String formatOvertimeHours(double? hours) {
  if (hours == null) return '-';
  final trimmed = hours == hours.roundToDouble()
      ? hours.toInt().toString()
      : hours.toStringAsFixed(1);
  return '$trimmed ${trimmed == '1' ? 'hour' : 'hours'}';
}

/// `HH:mm` from a [TimeOfDay], for API payloads.
String formatTimeOfDay(TimeOfDay time) {
  final hour = time.hour.toString().padLeft(2, '0');
  final minute = time.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
