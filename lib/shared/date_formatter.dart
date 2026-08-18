import 'package:office_hr/features/auth/domain/entities/user_entities/shift/shift.dart';

String formatDateTime(DateTime dt) {
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
  final month = months[dt.month - 1];
  final weekday = weekdays[dt.weekday - 1];
  final hour = dt.hour > 12 ? dt.hour - 12 : (dt.hour == 0 ? 12 : dt.hour);
  final amPm = dt.hour >= 12 ? 'PM' : 'AM';
  final minute = dt.minute.toString().padLeft(2, '0');
  return '$weekday, $month ${dt.day} | $hour:$minute $amPm';
}

String formatMonthYear(DateTime dt) {
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
  final month = months[dt.month - 1];
  return '$month ${dt.year}';
}

String formatTime(DateTime dt) {
  final hour = dt.hour > 12 ? dt.hour - 12 : (dt.hour == 0 ? 12 : dt.hour);
  final amPm = dt.hour >= 12 ? 'PM' : 'AM';
  final minute = dt.minute.toString().padLeft(2, '0');
  return '$hour:$minute $amPm';
}

String formatDateTimeWithSeconds(DateTime dt) {
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
  final month = months[dt.month - 1];
  final weekday = weekdays[dt.weekday - 1];
  final hour = dt.hour > 12 ? dt.hour - 12 : (dt.hour == 0 ? 12 : dt.hour);
  final amPm = dt.hour >= 12 ? 'PM' : 'AM';
  final minute = dt.minute.toString().padLeft(2, '0');
  final second = dt.second.toString().padLeft(2, '0');
  return '$weekday, $month ${dt.day} | $hour:$minute:$second $amPm';
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
