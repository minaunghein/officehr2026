import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';
import 'package:office_hr/features/settings/presentation/providers/notification_preferences.dart';
import 'package:office_hr/features/settings/presentation/providers/reminder_service_provider.dart';
import 'package:office_hr/features/settings/presentation/widgets/reminder_settings_card.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_tile.dart';

import 'package:easy_localization/easy_localization.dart';

/// Clock-in / clock-out reminders plus how their notifications are delivered.
class RemindersSettingsGroup extends ConsumerWidget {
  const RemindersSettingsGroup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final preferences = ref.watch(notificationPreferencesProvider);
    final supported = ref.watch(reminderServiceProvider).supported;

    if (!supported) {
      return SettingsGroup(
        title: 'Reminders'.tr(),
        children: [
          SettingsTile(
            icon: Icons.notifications_off_outlined,
            title: 'Reminders are unavailable'.tr(),
            subtitle: 'Daily reminders run on Android and iOS devices only.'
                .tr(),
            accessory: SettingsTileAccessory.none,
          ),
        ],
      );
    }

    return SettingsGroup(
      title: 'Reminders'.tr(),
      children: [
        const ReminderSettingsCard(kind: ReminderKind.clockIn),
        const ReminderSettingsCard(kind: ReminderKind.clockOut),
        SettingsGroup(
          title: 'Notification style'.tr(),
          nested: true,
          children: [
            SettingsSwitchTile(
              icon: Icons.volume_up_rounded,
              title: 'Sound'.tr(),
              value: preferences.sound,
              onChanged: (value) => ref
                  .read(notificationPreferencesProvider.notifier)
                  .setSound(value),
            ),
            SettingsSwitchTile(
              icon: Icons.vibration_rounded,
              title: 'Vibration'.tr(),
              value: preferences.vibration,
              onChanged: (value) => ref
                  .read(notificationPreferencesProvider.notifier)
                  .setVibration(value),
            ),
          ],
        ),
      ],
    );
  }
}
