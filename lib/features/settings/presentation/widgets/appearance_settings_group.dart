import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/localization/app_locale.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:office_hr/core/theme/theme_notifier.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_group.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_option_sheet.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_tile.dart';

import 'package:easy_localization/easy_localization.dart';

/// Theme mode and app language, both chosen from a bottom sheet.
class AppearanceSettingsGroup extends ConsumerWidget {
  const AppearanceSettingsGroup({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    final languageName = AppLocale.isMyanmar(context.locale)
        ? 'Myanmar'
        : 'English';

    Future<void> pickThemeMode() async {
      final selected = await showSettingsOptionSheet<OfficeHrThemeMode>(
        context,
        title: 'Theme'.tr(),
        options: [
          for (final mode in OfficeHrThemeMode.values)
            SettingsOption(
              value: mode,
              label: mode.displayName.tr(),
              icon: switch (mode) {
                OfficeHrThemeMode.system => Icons.brightness_auto_rounded,
                OfficeHrThemeMode.light => Icons.light_mode_rounded,
                OfficeHrThemeMode.dark => Icons.dark_mode_rounded,
              },
              selected: mode == themeMode,
            ),
        ],
      );
      if (selected != null && context.mounted) {
        await ref.read(themeProvider.notifier).setMode(selected);
      }
    }

    Future<void> pickLanguage() async {
      final selected = await showSettingsOptionSheet<Locale>(
        context,
        title: 'Language'.tr(),
        options: [
          for (final locale in AppLocale.supported)
            SettingsOption(
              value: locale,
              label: locale.languageCode == AppLocale.myanmar.languageCode
                  ? 'Myanmar'.tr()
                  : 'English'.tr(),
              icon: Icons.translate_rounded,
              selected: locale.languageCode == context.locale.languageCode,
            ),
        ],
      );
      if (selected != null && context.mounted) {
        await context.setLocale(selected);
      }
    }

    return SettingsGroup(
      title: 'Appearance'.tr(),
      children: [
        SettingsTile(
          icon: Icons.dark_mode_outlined,
          title: 'Theme'.tr(),
          value: themeMode.displayName.tr(),
          onTap: pickThemeMode,
        ),
        SettingsTile(
          icon: Icons.translate_rounded,
          title: 'Language'.tr(),
          value: languageName.tr(),
          onTap: pickLanguage,
        ),
      ],
    );
  }
}
