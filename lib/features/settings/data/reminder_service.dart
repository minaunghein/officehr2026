import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:office_hr/core/services/hive_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/data/latest.dart' as tzdata;
import 'package:timezone/timezone.dart' as tz;

/// The two attendance reminders a user can schedule.
enum ReminderKind {
  clockIn(1000, 'Clock-in reminder', 'Remember to clock in for work.', 9),
  clockOut(2000, 'Clock-out reminder', 'Remember to clock out after work.', 17);

  const ReminderKind(
    this.baseId,
    this.titleKey,
    this.bodyKey,
    this.defaultHour,
  );

  /// Reminders repeat per weekday, so each kind owns an id block
  /// (`baseId + weekday`, and `DateTime.weekday` is 1-7).
  final int baseId;
  final String titleKey;
  final String bodyKey;

  /// Suggested time when the user turns the reminder on for the first time.
  final int defaultHour;

  int idFor(int weekday) => baseId + weekday;

  List<int> get weekIds => [
    for (int weekday = 1; weekday <= 7; weekday++) idFor(weekday),
  ];

  String get timeKey => 'daily_reminder_${name}_time';
  String get daysKey => 'daily_reminder_${name}_days';
  String get enabledKey => 'daily_reminder_${name}_enabled';
}

/// Monday-first short weekday labels, translated through the app catalogue.
const List<String> kWeekdayShortNames = [
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
  'Sun',
];

/// A saved reminder: whether it is on, its time, and the weekdays it repeats.
@immutable
class ReminderSetting {
  const ReminderSetting({
    required this.enabled,
    required this.time,
    required this.days,
  });

  final bool enabled;
  final TimeOfDay time;

  /// `DateTime.weekday` values (Monday = 1 ... Sunday = 7).
  final Set<int> days;

  static const Set<int> allDays = {1, 2, 3, 4, 5, 6, 7};
  static const Set<int> weekdays = {1, 2, 3, 4, 5};
  static const Set<int> weekend = {6, 7};

  bool get repeatsEveryDay => days.length == allDays.length;

  /// Quick-pick label such as "Every day", "Weekdays" or "Mon, Wed, Fri".
  String get daysLabel {
    if (days.isEmpty) return 'Never'.tr();
    if (repeatsEveryDay) return 'Every day'.tr();
    if (_sameSet(days, weekdays)) return 'Weekdays'.tr();
    if (_sameSet(days, weekend)) return 'Weekends'.tr();
    final ordered = days.toList()..sort();
    return ordered
        .map((weekday) => kWeekdayShortNames[weekday - 1].tr())
        .join(', ');
  }

  ReminderSetting copyWith({bool? enabled, TimeOfDay? time, Set<int>? days}) =>
      ReminderSetting(
        enabled: enabled ?? this.enabled,
        time: time ?? this.time,
        days: days ?? this.days,
      );

  static bool _sameSet(Set<int> a, Set<int> b) =>
      a.length == b.length && a.containsAll(b);
}

/// Schedules and persists the daily clock in/out reminders.
class ReminderService {
  ReminderService._();

  static final ReminderService instance = ReminderService._();

  static const String soundKey = 'notification_sound_enabled';
  static const String vibrationKey = 'notification_vibration_enabled';

  static const String _channelId = 'attendance_reminders';

  /// Test seam for the platform check; production leaves this `null`.
  @visibleForTesting
  static TargetPlatform? platformOverride;

  final FlutterLocalNotificationsPlugin _notifications =
      FlutterLocalNotificationsPlugin();
  bool _initialized = false;

  bool get supported {
    if (kIsWeb) return false;
    final platform = platformOverride ?? defaultTargetPlatform;
    return platform == TargetPlatform.android || platform == TargetPlatform.iOS;
  }

  Future<void> initialize() async {
    if (_initialized || !supported) return;
    tzdata.initializeTimeZones();
    await _applyLocalTimeZone();
    await _notifications.initialize(
      settings: const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'),
        iOS: DarwinInitializationSettings(
          requestAlertPermission: false,
          requestBadgePermission: false,
          requestSoundPermission: false,
        ),
      ),
    );
    _initialized = true;
  }

  Future<void> _applyLocalTimeZone() async {
    final zone = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(zone.identifier));
  }

  // ==================== Delivery preferences ====================

  bool get soundEnabled => _flag(soundKey);
  bool get vibrationEnabled => _flag(vibrationKey);

  static bool _flag(String key) {
    final value = HiveService.settingsBox.get(key);
    return value is bool ? value : true;
  }

  // ==================== Schedules ====================

  /// The stored reminder for [kind], or `null` when it was never configured.
  Future<ReminderSetting?> get(ReminderKind kind) async {
    final prefs = await SharedPreferences.getInstance();
    final minutes = prefs.getInt(kind.timeKey);
    if (minutes == null || minutes < 0 || minutes >= 1440) return null;
    final encoded = prefs.getStringList(kind.daysKey);
    var days = <int>{
      if (encoded != null)
        ...encoded
            .map(int.tryParse)
            .whereType<int>()
            .where((weekday) => weekday >= 1 && weekday <= 7),
    };
    if (days.isEmpty) days = ReminderSetting.allDays;
    return ReminderSetting(
      enabled: prefs.getBool(kind.enabledKey) ?? false,
      time: TimeOfDay(hour: minutes ~/ 60, minute: minutes % 60),
      days: days,
    );
  }

  /// Merges [time]/[days]/[enabled] into the stored reminder and re-applies
  /// the schedule. Returns `false` when notifications were not granted.
  Future<bool> save(
    ReminderKind kind, {
    TimeOfDay? time,
    Set<int>? days,
    bool? enabled,
  }) async {
    if (!supported) return false;
    final stored =
        await get(kind) ??
        ReminderSetting(
          enabled: false,
          time: TimeOfDay(hour: kind.defaultHour, minute: 0),
          days: ReminderSetting.allDays,
        );
    var next = stored.copyWith(time: time, days: days, enabled: enabled);
    if (next.days.isEmpty) next = next.copyWith(days: ReminderSetting.allDays);

    if (next.enabled && !await requestPermission()) return false;

    await initialize();
    await _cancel(kind);
    if (next.enabled) {
      for (final weekday in next.days) {
        await _scheduleOn(kind, next, weekday);
      }
    }

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(kind.timeKey, next.time.hour * 60 + next.time.minute);
    await prefs.setStringList(
      kind.daysKey,
      [for (final weekday in next.days) weekday.toString()]..sort(),
    );
    await prefs.setBool(kind.enabledKey, next.enabled);
    return true;
  }

  Future<void> disable(ReminderKind kind) async {
    await save(kind, enabled: false);
  }

  /// Re-applies every active reminder, e.g. after sound or vibration changes.
  Future<void> rescheduleAll() async {
    if (!supported) return;
    await initialize();
    for (final kind in ReminderKind.values) {
      final setting = await get(kind);
      if (setting == null) continue;
      await _cancel(kind);
      if (!setting.enabled) continue;
      for (final weekday in setting.days) {
        await _scheduleOn(kind, setting, weekday);
      }
    }
  }

  /// Fires a reminder immediately so the user can confirm delivery works.
  Future<bool> sendTest(ReminderKind kind) async {
    if (!supported) return false;
    await initialize();
    if (!await requestPermission()) return false;
    await _notifications.show(
      id: kind.baseId + 90,
      title: kind.titleKey.tr(),
      body: 'This is a test of your attendance reminder.'.tr(),
      notificationDetails: _details(),
    );
    return true;
  }

  Future<bool> requestPermission() async {
    await initialize();
    final android = _notifications
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (android != null) {
      return await android.requestNotificationsPermission() ?? true;
    }
    final ios = _notifications
        .resolvePlatformSpecificImplementation<
          IOSFlutterLocalNotificationsPlugin
        >();
    return await ios?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        ) ??
        true;
  }

  Future<void> _cancel(ReminderKind kind) async {
    for (final id in kind.weekIds) {
      await _notifications.cancel(id: id);
    }
  }

  Future<void> _scheduleOn(
    ReminderKind kind,
    ReminderSetting setting,
    int weekday,
  ) async {
    // The zone can change when the user travels, so refresh before scheduling.
    await _applyLocalTimeZone();
    final now = tz.TZDateTime.now(tz.local);
    var next = tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day + ((weekday - now.weekday + 7) % 7),
      setting.time.hour,
      setting.time.minute,
    );
    if (!next.isAfter(now)) {
      next = next.add(const Duration(days: 7));
    }
    await _notifications.zonedSchedule(
      id: kind.idFor(weekday),
      title: kind.titleKey.tr(),
      body: kind.bodyKey.tr(),
      scheduledDate: next,
      notificationDetails: _details(),
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime,
    );
  }

  NotificationDetails _details() {
    return NotificationDetails(
      android: AndroidNotificationDetails(
        _channelId,
        'Attendance reminders'.tr(),
        channelDescription: 'Daily clock-in and clock-out reminders'.tr(),
        importance: Importance.defaultImportance,
        priority: Priority.defaultPriority,
        playSound: soundEnabled,
        enableVibration: vibrationEnabled,
      ),
      iOS: DarwinNotificationDetails(
        presentSound: soundEnabled,
        presentAlert: true,
      ),
    );
  }
}
