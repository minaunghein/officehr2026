import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:office_hr/core/theme/app_theme.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/core/theme/theme_notifier.dart';

class OfficeHrApp extends ConsumerWidget {
  const OfficeHrApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeStyle = ref.watch(themeProvider);
    final themeData = AppTheme.getTheme(themeStyle);
    final router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Office HR',
      debugShowCheckedModeBanner: false,
      theme: themeData,
      routerConfig: router,
    );
  }
}
