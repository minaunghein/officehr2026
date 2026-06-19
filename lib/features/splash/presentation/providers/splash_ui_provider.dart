import 'package:flutter/material.dart';
import 'package:office_hr/core/config/app_config.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_ui_provider.g.dart';

typedef SplashChip = ({IconData icon, String label});
typedef SplashUiData = ({
  String title,
  String subtitle,
  String badge,
  String status,
  bool isProduction,
  Duration navigationDelay,
  List<SplashChip> chips,
});

@riverpod
SplashUiData splashUiData(Ref ref) {
  final config = AppConfig.instance;
  final isProduction = config.environment.toLowerCase() == 'production';

  return (
    title: 'Office HR',
    subtitle: isProduction
        ? 'Production workspace ready to load.'
        : 'Development workspace is warming up.',
    badge: isProduction ? 'Production' : 'Development',
    status: isProduction
        ? 'Launching secure session'
        : 'Starting preview session',
    isProduction: isProduction,
    navigationDelay: const Duration(milliseconds: 1800),
    chips: const [
      (icon: Icons.calendar_month_rounded, label: 'Attendance'),
      (icon: Icons.groups_rounded, label: 'Teams'),
      (icon: Icons.verified_user_rounded, label: 'Secure'),
    ],
  );
}
