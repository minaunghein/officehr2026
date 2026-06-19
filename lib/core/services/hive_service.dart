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
}
