import 'package:office_hr/features/user/domain/entities/shift.dart';

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
  final todayDayId = (todayWeekday % 7) + 1;
  final todayWorkingDay = shift.workingDays.firstWhere(
    (wd) => wd.dayId == todayDayId,
    orElse: () => shift.workingDays.first,
  );

  if (todayWorkingDay.isOffDay) {
    return 'Off Day';
  }

  String formatIntTime(int timeInt) {
    final hour = timeInt ~/ 100;
    final minute = timeInt % 100;
    final hour12 = hour == 0 ? 12 : (hour > 12 ? hour - 12 : hour);
    final amPm = hour < 12 ? 'AM' : 'PM';
    final mm = minute.toString().padLeft(2, '0');
    final hh = hour12.toString().padLeft(2, '0');
    return '$hh:$mm $amPm';
  }

  return '${formatIntTime(todayWorkingDay.workStart)} - ${formatIntTime(todayWorkingDay.workEnd)}${todayWorkingDay.isHalfDay ? ' (Half Day)' : ''}';
}
