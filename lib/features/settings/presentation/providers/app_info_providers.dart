import 'package:flutter/foundation.dart';
import 'package:office_hr/core/config/app_config.dart';
import 'package:office_hr/core/network/network_providers.dart';
import 'package:office_hr/features/settings/domain/entities/app_info.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_info_providers.g.dart';

/// Build and environment details for the settings footer and About screen.
@riverpod
Future<AppInfo> appInfo(Ref ref) async {
  final package = await PackageInfo.fromPlatform();
  String environment;
  try {
    environment = AppConfig.instance.environment;
  } on StateError {
    // Tests and tooling do not load config/*.json.
    environment = kReleaseMode ? 'production' : 'development';
  }
  final now = DateTime.now();
  final offset = now.timeZoneOffset;
  final sign = offset.isNegative ? '-' : '+';
  final absolute = offset.abs();

  return AppInfo(
    version: package.version,
    build: package.buildNumber,
    environment: environment,
    baseUrl: ref.read(apiConfigProvider).baseUrl,
    platform: switch (defaultTargetPlatform) {
      TargetPlatform.iOS => 'iOS',
      TargetPlatform.android => 'Android',
      TargetPlatform.macOS => 'macOS',
      _ => defaultTargetPlatform.name,
    },
    timezone:
        '${now.timeZoneName} (GMT$sign'
        '${absolute.inHours.toString().padLeft(2, '0')}:'
        '${(absolute.inMinutes % 60).toString().padLeft(2, '0')})',
  );
}
