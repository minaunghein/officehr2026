import 'package:flutter/foundation.dart';
import 'package:office_hr/core/services/hive_service.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'notification_preferences.g.dart';

/// Delivery options shared by every attendance reminder.
@immutable
class NotificationPreference {
  const NotificationPreference({required this.sound, required this.vibration});

  final bool sound;
  final bool vibration;
}

/// Sound and vibration switches. Updating them re-applies the saved
/// schedules so the next reminder honours the new delivery options.
@riverpod
class NotificationPreferences extends _$NotificationPreferences {
  @override
  NotificationPreference build() => NotificationPreference(
    sound: ReminderService.instance.soundEnabled,
    vibration: ReminderService.instance.vibrationEnabled,
  );

  void setSound(bool value) => _write(
    ReminderService.soundKey,
    value,
    (current) =>
        NotificationPreference(sound: value, vibration: current.vibration),
  );

  void setVibration(bool value) => _write(
    ReminderService.vibrationKey,
    value,
    (current) => NotificationPreference(sound: current.sound, vibration: value),
  );

  void _write(
    String key,
    bool value,
    NotificationPreference Function(NotificationPreference current) apply,
  ) {
    state = apply(state);
    HiveService.settingsBox.put(key, value);
    // Saved reminders are re-applied with the new delivery options.
    ReminderService.instance.rescheduleAll().catchError((Object _) {});
  }
}
