import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/services/hive_service.dart';

import 'app.dart';
import 'core/config/app_config.dart';
import 'core/localization/app_locale.dart';
import 'features/settings/data/reminder_service.dart';

Future<void> main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await EasyLocalization.ensureInitialized();

      await HiveService.init();
      await ReminderService.instance.initialize();

      final config = await AppConfig.load();
      if (defaultTargetPlatform == TargetPlatform.iOS ||
          defaultTargetPlatform == TargetPlatform.macOS) {
        await Firebase.initializeApp();
      } else {
        await Firebase.initializeApp(
          options: config.firebase.toFirebaseOptions(),
        );
      }

      await FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(
        config.features.enableCrashlytics,
      );
      await FirebaseCrashlytics.instance.setCustomKey(
        'environment',
        config.environment,
      );

      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        FirebaseCrashlytics.instance.recordFlutterFatalError(details);
      };

      PlatformDispatcher.instance.onError = (error, stack) {
        FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
        return true;
      };

      runApp(
        EasyLocalization(
          supportedLocales: AppLocale.supported,
          path: 'assets/translations',
          fallbackLocale: AppLocale.fallback,
          useOnlyLangCode: true,
          child: const MyApp(),
        ),
      );
    },
    (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    },
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      retry: (retryCount, error) => null,
      child: const OfficeHrApp(),
    );
  }
}
