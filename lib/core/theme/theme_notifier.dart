import 'package:office_hr/core/services/hive_service.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_notifier.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  static const _modeKey = 'themeMode';
  static const _legacyThemeKey = 'selectedTheme';

  @override
  OfficeHrThemeMode build() {
    final savedKey = HiveService.settingsBox.get(_modeKey) as String?;
    if (savedKey != null) return OfficeHrThemeMode.fromKey(savedKey);
    // Earlier builds only stored light/dark; keep that choice on upgrade.
    final legacyKey = HiveService.settingsBox.get(_legacyThemeKey) as String?;
    if (legacyKey != null) return OfficeHrThemeMode.fromKey(legacyKey);
    return OfficeHrThemeMode.system;
  }

  Future<void> setMode(OfficeHrThemeMode mode) async {
    state = mode;
    await HiveService.settingsBox.put(_modeKey, mode.key);
  }
}
