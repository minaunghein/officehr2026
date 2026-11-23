import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/security/biometric_preferences.dart';
import 'package:office_hr/core/security/biometric_service.dart';
import 'package:office_hr/core/security/security_providers.dart';
import 'package:office_hr/core/services/hive_service.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/settings/presentation/widgets/security_settings_group.dart';

class _FakeBiometricService implements BiometricService {
  _FakeBiometricService({
    this.availability = BiometricAvailability.available,
    this.result = BiometricResult.success,
  });

  final BiometricAvailability availability;
  final BiometricResult result;
  int authenticateCalls = 0;

  @override
  Future<BiometricAvailability> checkAvailability() async => availability;

  @override
  Future<BiometricResult> authenticate({
    required String reason,
    bool biometricOnly = false,
  }) async {
    authenticateCalls++;
    return result;
  }
}

void main() {
  late Directory storage;

  setUpAll(() async {
    storage = Directory.systemTemp.createTempSync('officehr-settings');
    await HiveService.initForTest(storage.path);
  });

  tearDownAll(() async {
    if (storage.existsSync()) await storage.delete(recursive: true);
  });

  late ProviderContainer container;

  setUp(() {
    container = ProviderContainer();
    // Start every case with protection off so the toggle path is exercised.
    container
        .read(biometricPreferencesProvider.notifier)
        .setScreensEnabled(false);
  });

  tearDown(() {
    container.dispose();
  });

  Future<void> pumpGroup(WidgetTester tester, BiometricService service) async {
    container = ProviderContainer(
      overrides: [biometricServiceProvider.overrideWithValue(service)],
    );
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: MaterialApp(
          scaffoldMessengerKey: rootScaffoldMessengerKey,
          home: const Scaffold(body: SecuritySettingsGroup()),
        ),
      ),
    );
    await tester.pump();
  }

  Future<void> toggleProtection(WidgetTester tester) async {
    await tester.tap(find.text('Protect sensitive screens'));
    await tester.pump();
    await tester.pump(const Duration(seconds: 4));
  }

  bool protectionEnabled() =>
      container.read(biometricPreferencesProvider).screensEnabled;

  testWidgets('enabling protection asks for one authentication', (
    tester,
  ) async {
    final service = _FakeBiometricService();
    await pumpGroup(tester, service);
    expect(protectionEnabled(), isFalse);

    await toggleProtection(tester);

    expect(service.authenticateCalls, 1);
    expect(protectionEnabled(), isTrue);
    expect(find.text('Screen protection enabled.'), findsOneWidget);
  });

  testWidgets('a failed authentication leaves protection off', (tester) async {
    await pumpGroup(
      tester,
      _FakeBiometricService(result: BiometricResult.failed),
    );

    await toggleProtection(tester);

    expect(protectionEnabled(), isFalse);
    expect(
      find.text('Authentication failed. Please try again.'),
      findsOneWidget,
    );
  });

  testWidgets('without device authentication the switch cannot be enabled', (
    tester,
  ) async {
    final service = _FakeBiometricService(
      availability: BiometricAvailability.unavailable,
    );
    await pumpGroup(tester, service);

    await toggleProtection(tester);

    expect(service.authenticateCalls, isZero);
    expect(protectionEnabled(), isFalse);
    expect(
      find.textContaining('Add a fingerprint, face unlock or device passcode'),
      findsOneWidget,
    );
  });

  testWidgets('sub-settings are disabled while protection is off', (
    tester,
  ) async {
    await pumpGroup(tester, _FakeBiometricService());

    expect(switchBeside(tester, Icons.lock_clock_rounded).onChanged, isNull);
    expect(switchBeside(tester, Icons.dialpad_rounded).onChanged, isNull);
    expect(
      switchBeside(tester, Icons.fingerprint_rounded).onChanged,
      isNotNull,
    );
  });
}

/// The switch on the settings row that carries [icon].
Switch switchBeside(WidgetTester tester, IconData icon) {
  final row = find.ancestor(
    of: find.byIcon(icon),
    matching: find.byType(ListTile),
  );
  expect(row, findsOneWidget, reason: 'expected one settings row for $icon');
  return tester.widget<Switch>(
    find.descendant(of: row.first, matching: find.byType(Switch)),
  );
}
