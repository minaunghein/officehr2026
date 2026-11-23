import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';

void main() {
  ReminderSetting setting(Set<int> days) => ReminderSetting(
    enabled: true,
    time: const TimeOfDay(hour: 9, minute: 0),
    days: days,
  );

  test('a full week reads as every day', () {
    expect(setting(ReminderSetting.allDays).daysLabel, 'Every day');
  });

  test('monday to friday reads as weekdays', () {
    expect(setting(ReminderSetting.weekdays).daysLabel, 'Weekdays');
  });

  test('saturday and sunday read as weekends', () {
    expect(setting(ReminderSetting.weekend).daysLabel, 'Weekends');
  });

  test('custom days are listed in monday-first order', () {
    expect(setting({3, 1, 5}).daysLabel, 'Mon, Wed, Fri');
  });

  test('an empty selection is reported as never', () {
    expect(setting(<int>{}).daysLabel, 'Never');
  });

  test('each reminder kind owns its own notification ids', () {
    expect(ReminderKind.clockIn.weekIds, isNot(ReminderKind.clockOut.weekIds));
    expect(ReminderKind.clockIn.weekIds, hasLength(7));
    expect(ReminderKind.clockIn.idFor(DateTime.monday), 1001);
  });
}
