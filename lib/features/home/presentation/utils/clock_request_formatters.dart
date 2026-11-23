import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:easy_localization/easy_localization.dart';

/// Formats a `YYYYMMDD` date id like `20261118` as `18 Nov 2026`.
String formatDateId(String? dateId) {
  final value = dateId?.trim() ?? '';
  if (value.length != 8) return value.isEmpty ? '-' : value;

  final year = value.substring(0, 4);
  final month = int.tryParse(value.substring(4, 6));
  final day = value.substring(6, 8);
  if (month == null || month < 1 || month > 12) return value;

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
  return '$day ${months[month - 1]} $year';
}

/// Formats a `HH:mm` punch time as `09:07 AM`.
String formatPunchTime(String? punchTime) {
  final value = punchTime?.trim() ?? '';
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

String clockPunchTypeLabel(ClockPunchType type) => type.label.tr();

/// Builds the `YYYYMMDD` date id for a local date.
String dateIdFor(DateTime date) {
  final local = date.toLocal();
  final month = local.month.toString().padLeft(2, '0');
  final day = local.day.toString().padLeft(2, '0');
  return '${local.year}$month$day';
}

/// Builds the `HH:mm` punch time for a local date-time.
String punchTimeFor(DateTime dateTime) {
  final local = dateTime.toLocal();
  final hour = local.hour.toString().padLeft(2, '0');
  final minute = local.minute.toString().padLeft(2, '0');
  return '$hour:$minute';
}
