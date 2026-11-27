import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/localization/app_locale.dart';
import 'package:office_hr/core/security/biometric_service.dart';
import 'package:office_hr/core/security/security_providers.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';
import 'package:office_hr/core/services/hive_service.dart';
import 'package:office_hr/core/theme/app_theme.dart';
import 'package:office_hr/core/theme/theme_notifier.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/settings/domain/entities/app_info.dart';
import 'package:office_hr/features/settings/presentation/providers/app_info_providers.dart';
import 'package:office_hr/features/settings/presentation/screens/settings_screen.dart';
import 'package:office_hr/features/settings/presentation/widgets/settings_account_card.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _AvailableBiometrics implements BiometricService {
  @override
  Future<BiometricAvailability> checkAvailability() async =>
      BiometricAvailability.available;

  @override
  Future<BiometricResult> authenticate({
    required String reason,
    bool biometricOnly = false,
  }) async => BiometricResult.success;
}

class _RecordingLogin extends LoginNotifier {
  int logoutCalls = 0;

  @override
  Future<void> logout() async => logoutCalls++;
}

class _LoadedTranslations extends AssetLoader {
  const _LoadedTranslations(this.translations);

  final Map<String, Map<String, dynamic>> translations;

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async =>
      translations[locale.languageCode];
}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Directory storage;
  late ProviderContainer container;
  late _RecordingLogin login;
  late Map<String, Map<String, dynamic>> translations;

  setUpAll(() async {
    storage = Directory.systemTemp.createTempSync('officehr-settings-screen');
    await HiveService.initForTest(storage.path);
    translations = {
      for (final locale in AppLocale.supported)
        locale.languageCode:
            jsonDecode(
                  await rootBundle.loadString(
                    'assets/translations/${locale.languageCode}.json',
                  ),
                )
                as Map<String, dynamic>,
    };
  });

  tearDownAll(() async {
    if (storage.existsSync()) await storage.delete(recursive: true);
  });

  setUp(() async {
    // Reminders only schedule on Android/iOS.
    ReminderService.platformOverride = TargetPlatform.iOS;
    SharedPreferences.setMockInitialValues({
      // Clock-in reminder on at 08:15, Monday to Friday.
      'daily_reminder_clockIn_time': 8 * 60 + 15,
      'daily_reminder_clockIn_enabled': true,
      'daily_reminder_clockIn_days': <String>['1', '2', '3', '4', '5'],
    });
    await EasyLocalization.ensureInitialized();
  });

  tearDown(() {
    ReminderService.platformOverride = null;
    container.dispose();
  });

  Future<void> pumpSettings(WidgetTester tester) async {
    login = _RecordingLogin();
    container = ProviderContainer(
      overrides: [
        loginProvider.overrideWith(() => login),
        biometricServiceProvider.overrideWithValue(_AvailableBiometrics()),
        appInfoProvider.overrideWith(
          (ref) async => const AppInfo(
            version: '1.2.0',
            build: '34',
            environment: 'development',
            baseUrl: 'https://hr.example',
            platform: 'iOS',
            timezone: 'MMT (GMT+06:30)',
          ),
        ),
      ],
    );

    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: AppLocale.supported,
        path: 'assets/translations',
        fallbackLocale: AppLocale.fallback,
        startLocale: AppLocale.fallback,
        saveLocale: false,
        useOnlyLangCode: true,
        assetLoader: _LoadedTranslations(translations),
        child: UncontrolledProviderScope(
          container: container,
          child: Builder(
            builder: (context) => MaterialApp(
              locale: context.locale,
              supportedLocales: context.supportedLocales,
              localizationsDelegates: context.localizationDelegates,
              home: const SettingsScreen(),
            ),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
  }

  Future<void> scrollTo(WidgetTester tester, Finder finder) async {
    if (finder.evaluate().isNotEmpty) {
      await tester.ensureVisible(finder);
    } else {
      await tester.scrollUntilVisible(
        finder,
        250,
        scrollable: find.byType(Scrollable).first,
      );
    }
    await tester.pump();
  }

  testWidgets('every settings section is reachable', (tester) async {
    await pumpSettings(tester);
    expect(find.byType(SettingsAccountCard), findsNothing);

    for (final label in const [
      'Appearance',
      'Reminders',
      'Notification style',
      'Security',
      'Account',
      'Logout',
    ]) {
      final finder = find.text(label);
      await scrollTo(tester, finder);
      expect(finder, findsOneWidget, reason: 'missing $label section');
    }
    expect(find.text('About', skipOffstage: false), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a saved reminder shows its days and time', (tester) async {
    await pumpSettings(tester);

    expect(find.textContaining('Weekdays'), findsWidgets);
    expect(find.textContaining('8:15'), findsOneWidget);
    expect(find.textContaining('Off'), findsOneWidget);
  });

  testWidgets('expanding a reminder reveals days and the test action', (
    tester,
  ) async {
    await pumpSettings(tester);

    await tester.tap(find.text('Clock-in reminder'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.text('Repeat on'), findsOneWidget);
    expect(find.text('Send a test notification'), findsOneWidget);
    expect(find.widgetWithText(FilterChip, 'Weekends'), findsOneWidget);
  });

  testWidgets('the theme sheet stores the chosen mode', (tester) async {
    await pumpSettings(tester);

    await tester.tap(find.text('Theme'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));
    expect(find.widgetWithText(ListTile, 'Dark'), findsOneWidget);

    await tester.tap(find.widgetWithText(ListTile, 'Dark'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(container.read(themeProvider), OfficeHrThemeMode.dark);
    final themeTile = find.widgetWithText(ListTile, 'Theme');
    expect(
      find.descendant(of: themeTile, matching: find.text('Dark')),
      findsOneWidget,
    );
  });

  testWidgets('the selected language appears immediately before its arrow', (
    tester,
  ) async {
    await pumpSettings(tester);

    final languageTile = find.widgetWithText(ListTile, 'Language');
    final arrow = find.descendant(
      of: languageTile,
      matching: find.byIcon(Icons.chevron_right_rounded),
    );
    final value = find.descendant(
      of: languageTile,
      matching: find.text('English'),
    );
    expect(tester.getRect(value).right, lessThan(tester.getRect(arrow).left));
    expect(
      tester.getRect(arrow).left - tester.getRect(value).right,
      lessThanOrEqualTo(16),
    );
    expect(tester.getCenter(value).dy, closeTo(tester.getCenter(arrow).dy, 1));

    await tester.tap(languageTile);
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ListTile, 'Myanmar'));
    await tester.pumpAndSettle();

    final my = translations[AppLocale.myanmar.languageCode]!;
    final localizedTile = find.widgetWithText(
      ListTile,
      my['Language'] as String,
    );
    expect(
      find.descendant(
        of: localizedTile,
        matching: find.text(my['Myanmar'] as String),
      ),
      findsOneWidget,
    );
  });

  testWidgets('logout runs only after confirmation in Settings', (
    tester,
  ) async {
    await pumpSettings(tester);
    final row = find.widgetWithText(ListTile, 'Logout');
    await scrollTo(tester, row);
    await tester.tap(row);
    await tester.pumpAndSettle();
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(login.logoutCalls, 0);

    await tester.tap(row);
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(FilledButton, 'Logout'));
    await tester.pumpAndSettle();
    expect(login.logoutCalls, 1);
  });

  testWidgets('Myanmar reminders show distinct full day names on a phone', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 720);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await pumpSettings(tester);
    await tester.tap(find.widgetWithText(ListTile, 'Language'));
    await tester.pumpAndSettle();
    await tester.tap(find.widgetWithText(ListTile, 'Myanmar'));
    await tester.pumpAndSettle();

    expect(find.text('သတ်မှတ်ချက်များ'), findsOneWidget);
    final reminder = find.widgetWithText(ListTile, 'အလုပ်ဝင်ချိန် သတိပေးချက်');
    await scrollTo(tester, reminder);
    await tester.tap(reminder);
    await tester.pumpAndSettle();

    expect(find.widgetWithText(FilterChip, 'တနင်္လာမှ သောကြာ'), findsOneWidget);
    expect(find.text('တနင်္လာ'), findsOneWidget);
    expect(find.text('တနင်္ဂနွေ'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
