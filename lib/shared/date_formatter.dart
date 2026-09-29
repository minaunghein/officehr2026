import 'package:office_hr/core/utils/date_time_utils.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift/shift.dart';
import 'package:office_hr/features/auth/domain/entities/user_entities/shift_day/shift_day.dart';

/// Formats a backend date or date-time string as `DD-MM-YY` in local time.
/// Missing values become `-`; unparseable values are preserved.
String formatDateString(String? value) {
  if (value == null || value.trim().isEmpty) return '-';
  final date = parseLocalDateTime(value);
  if (date == null) return value;
  final day = date.day.toString().padLeft(2, '0');
  final month = date.month.toString().padLeft(2, '0');
  final year = (date.year % 100).toString().padLeft(2, '0');
  return '$day-$month-$year';
}

String formatDateTime(DateTime dt) {
  final local = dt.toLocal();
  final months = [
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
  final weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final month = months[local.month - 1];
  final weekday = weekdays[local.weekday - 1];
  final hour = local.hour > 12
      ? local.hour - 12
      : (local.hour == 0 ? 12 : local.hour);
  final amPm = local.hour >= 12 ? 'PM' : 'AM';
  final minute = local.minute.toString().padLeft(2, '0');
  return '$weekday, $month ${local.day} | $hour:$minute $amPm';
}

String formatMonthYear(DateTime dt) {
  final local = dt.toLocal();
  final months = [
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
  final month = months[local.month - 1];
  return '$month ${local.year}';
}

String formatTime(DateTime dt) {
  final local = dt.toLocal();
  final hour = local.hour > 12
      ? local.hour - 12
      : (local.hour == 0 ? 12 : local.hour);
  final amPm = local.hour >= 12 ? 'PM' : 'AM';
  final minute = local.minute.toString().padLeft(2, '0');
  return '$hour:$minute $amPm';
}

String formatDateTimeWithSeconds(DateTime dt) {
  final local = dt.toLocal();
  final months = [
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
  final weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  final month = months[local.month - 1];
  final weekday = weekdays[local.weekday - 1];
  final hour = local.hour > 12
      ? local.hour - 12
      : (local.hour == 0 ? 12 : local.hour);
  final amPm = local.hour >= 12 ? 'PM' : 'AM';
  final minute = local.minute.toString().padLeft(2, '0');
  final second = local.second.toString().padLeft(2, '0');
  return '$weekday, $month ${local.day} | $hour:$minute:$second $amPm';
}

String formatShiftWorkHours(Shift? shift) {
  if (shift == null) return '--:--';

  final todayWeekday = DateTime.now().weekday;
  final todayWorkingDay = shift.days.where((day) {
    return day.dayNo == todayWeekday ||
        day.day.toLowerCase() == _weekdayName(todayWeekday);
  }).firstOrNull;

  if (todayWorkingDay != null) {
    if (todayWorkingDay.isHalfDay) {
      return 'Half Day';
    }

    if (todayWorkingDay.isOffDay || !todayWorkingDay.isWorkingDay) {
      return 'Off Day';
    }

    final start = todayWorkingDay.workStart ?? shift.defaultStart;
    final end = todayWorkingDay.workEnd ?? shift.defaultEnd;
    return '${_formatShiftTime(start)} - ${_formatShiftTime(end)}${todayWorkingDay.isHalfDay ? ' (Half Day)' : ''}';
  }

  return '${_formatShiftTime(shift.defaultStart)} - ${_formatShiftTime(shift.defaultEnd)}';
}

String _formatShiftTime(String time) {
  final parts = time.trim().split(':');
  if (parts.length < 2) return '--:--';

  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  if (hour == null || minute == null) return '--:--';

  final hour12 = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
  final amPm = hour < 12 ? 'AM' : 'PM';
  final hh = hour12.toString().padLeft(2, '0');
  final mm = minute.toString().padLeft(2, '0');
  return '$hh:$mm $amPm';
}

String _weekdayName(int weekday) {
  return switch (weekday) {
    DateTime.monday => 'monday',
    DateTime.tuesday => 'tuesday',
    DateTime.wednesday => 'wednesday',
    DateTime.thursday => 'thursday',
    DateTime.friday => 'friday',
    DateTime.saturday => 'saturday',
    DateTime.sunday => 'sunday',
    _ => '',
  };
}

DateTime? parseAttendanceTime(String? value) {
  if (value == null || value.trim().isEmpty) return null;

  final parsedDateTime = parseLocalDateTime(value);
  if (parsedDateTime != null) return parsedDateTime;

  final parts = value.trim().split(':');
  if (parts.length < 2) return null;

  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  final second = parts.length > 2 ? int.tryParse(parts[2]) ?? 0 : 0;
  if (hour == null || minute == null) return null;

  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day, hour, minute, second);
}

String formatAttendanceTime(String? value) {
  final time = parseAttendanceTime(value);
  return time == null ? '--:--' : formatTime(time);
}

String formatDurationText(Duration duration) {
  final hours = duration.inHours;
  final minutes = duration.inMinutes.remainder(60);

  if (hours > 0 && minutes > 0) return '${hours}h ${minutes}m';
  if (hours > 0) return '${hours}h';
  return '${minutes}m';
}

ShiftDay? getShiftDayForDate(Shift shift, DateTime date) {
  final localDate = date.toLocal();
  return shift.days.where((day) {
    return day.dayNo == localDate.weekday ||
        day.day.toLowerCase() == _weekdayName(localDate.weekday);
  }).firstOrNull;
}

DateTime? parseTimeOnDate(String? value, DateTime date) {
  if (value == null || value.trim().isEmpty) return null;

  final localDate = date.toLocal();

  final parts = value.trim().split(':');
  if (parts.length < 2) return null;

  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  final second = parts.length > 2 ? int.tryParse(parts[2]) ?? 0 : 0;
  if (hour == null || minute == null) return null;

  return DateTime(
    localDate.year,
    localDate.month,
    localDate.day,
    hour,
    minute,
    second,
  );
}

String weekdayName(int weekday) {
  return switch (weekday) {
    DateTime.monday => 'monday',
    DateTime.tuesday => 'tuesday',
    DateTime.wednesday => 'wednesday',
    DateTime.thursday => 'thursday',
    DateTime.friday => 'friday',
    DateTime.saturday => 'saturday',
    DateTime.sunday => 'sunday',
    _ => '',
  };
}

DateTime? parseClockTime(String? value) {
  if (value == null || value.trim().isEmpty) return null;

  final parsedDateTime = parseLocalDateTime(value);
  if (parsedDateTime != null) return parsedDateTime;

  final parts = value.trim().split(':');
  if (parts.length < 2) return null;

  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  final second = parts.length > 2 ? int.tryParse(parts[2]) ?? 0 : 0;
  if (hour == null || minute == null) return null;

  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day, hour, minute, second);
}

DateTime? getTodayShiftStart(Shift? shift) {
  if (shift == null) return null;

  final shiftDay = getTodayShiftDay(shift);
  if (shiftDay != null && (!shiftDay.isWorkingDay || shiftDay.isOffDay)) {
    return null;
  }

  return parseShiftTime(shiftDay?.workStart ?? shift.defaultStart);
}

ShiftDay? getTodayShiftDay(Shift shift) {
  final todayWeekday = DateTime.now().weekday;
  return shift.days.where((day) {
    return day.dayNo == todayWeekday ||
        day.day.toLowerCase() == _weekdayName(todayWeekday);
  }).firstOrNull;
}

DateTime? parseShiftTime(String? value) {
  if (value == null || value.trim().isEmpty) return null;

  final parts = value.trim().split(':');
  if (parts.length < 2) return null;

  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  if (hour == null || minute == null) return null;

  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day, hour, minute);
}
