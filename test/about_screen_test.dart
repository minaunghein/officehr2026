import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/localization/app_locale.dart';
import 'package:office_hr/core/services/hive_service.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/settings/domain/entities/app_info.dart';
import 'package:office_hr/features/settings/presentation/providers/app_info_providers.dart';
import 'package:office_hr/features/settings/presentation/screens/about_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late Directory storage;
  late _RecordingClipboard clipboard;

  setUpAll(() async {
    storage = Directory.systemTemp.createTempSync('officehr-about');
    await HiveService.initForTest(storage.path);
  });

  tearDownAll(() async {
    if (storage.existsSync()) await storage.delete(recursive: true);
  });

  setUp(() async {
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    clipboard = _RecordingClipboard();
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, clipboard.handle);
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, null);
  });

  Future<void> pumpAbout(WidgetTester tester) async {
    // Tall enough that the whole list is laid out at once.
    tester.view.physicalSize = const Size(390, 1600);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: AppLocale.supported,
        path: 'assets/translations',
        fallbackLocale: AppLocale.fallback,
        useOnlyLangCode: true,
        child: ProviderScope(
          overrides: [
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
          child: MaterialApp(
            scaffoldMessengerKey: rootScaffoldMessengerKey,
            home: const AboutScreen(),
          ),
        ),
      ),
    );
    await tester.pump();
    await tester.pump(const Duration(seconds: 1));
  }

  testWidgets('about lists build details and support actions', (tester) async {
    await pumpAbout(tester);

    for (final label in const ['Application', 'Server', 'Support']) {
      expect(find.text(label), findsOneWidget, reason: 'missing $label');
    }
    expect(find.text('1.2.0'), findsOneWidget);
    expect(find.text('34'), findsOneWidget);
    expect(find.text('development'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('the server address can be copied', (tester) async {
    await pumpAbout(tester);

    await tester.tap(find.text('API endpoint'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(clipboard.copied, contains('https://hr.example'));
    expect(find.text('Server address copied.'), findsOneWidget);
  });

  testWidgets('the faq sheet explains reminders', (tester) async {
    await pumpAbout(tester);

    await tester.tap(find.text('Frequently asked questions'));
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.textContaining('How do reminders work?'), findsOneWidget);
    expect(
      find.textContaining('repeats weekly on the selected days'),
      findsOneWidget,
    );
  });
}

/// Records `Clipboard.setData` calls instead of the built-in fake clipboard.
class _RecordingClipboard {
  final List<String> copied = [];

  Future<Object?> handle(MethodCall call) async {
    if (call.method == 'Clipboard.setData') {
      final text = (call.arguments as Map<Object?, Object?>)['text'];
      copied.add(text! as String);
    }
    return null;
  }
}
