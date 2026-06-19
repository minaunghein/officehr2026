import 'package:office_hr/core/services/hive_service.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_notifier.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  static const _boxKey = 'selectedTheme';
  @override
  OfficeHrTheme build() {
    final savedKey = HiveService.settingsBox.get(_boxKey) as String?;
    if (savedKey != null) {
      return OfficeHrThemeExt.fromKey(savedKey);
    }
    return OfficeHrTheme.light;
  }

  void setTheme(OfficeHrTheme style) {
    HiveService.settingsBox.put(_boxKey, style.key);
    state = style;
  }
}
