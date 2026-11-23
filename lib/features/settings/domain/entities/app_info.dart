import 'package:flutter/foundation.dart';

/// Everything the About screen and settings footer display about the build.
@immutable
class AppInfo {
  const AppInfo({
    required this.version,
    required this.build,
    required this.environment,
    required this.baseUrl,
    required this.platform,
    required this.timezone,
  });

  final String version;
  final String build;
  final String environment;
  final String baseUrl;
  final String platform;

  /// Device time zone name, used when checking reminder schedules.
  final String timezone;

  String get versionLabel => 'v$version+$build';
}
