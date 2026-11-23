import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService {
  HiveService._();

  static const String _settingsBox = 'settings_box';

  static late Box _settings;

  static Box get settingsBox => _settings;

  static Future<void> init() async {
    await Hive.initFlutter();

    _settings = await Hive.openBox(_settingsBox);
  }

  /// Closes the box opened by [initForTest].
  @visibleForTesting
  static Future<void> closeForTest() => _settings.close();

  /// Opens the settings box from [path] instead of the platform path provider,
  /// so preference notifiers can be exercised in widget tests.
  @visibleForTesting
  static Future<void> initForTest(String path) async {
    Hive.init(path);
    _settings = await Hive.openBox(_settingsBox);
  }
}
