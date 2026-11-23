import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/utils/snackbar_utils.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';
import 'package:office_hr/features/settings/presentation/providers/reminder_service_provider.dart';
import 'package:office_hr/features/settings/presentation/widgets/reminder_settings_card.dart';

class _DelayedReminderService implements ReminderService {
  @override
  bool get supported => true;

  int loads = 0;
  final writes = <(Set<int>, Completer<bool>)>[];

  @override
  Future<ReminderSetting?> get(ReminderKind kind) async {
    loads++;
    return const ReminderSetting(
      enabled: true,
      time: TimeOfDay(hour: 9, minute: 0),
      days: ReminderSetting.weekdays,
    );
  }

  @override
  Future<bool> save(
    ReminderKind kind, {
    TimeOfDay? time,
    Set<int>? days,
    bool? enabled,
  }) {
    final result = Completer<bool>();
    writes.add((days!, result));
    return result.future;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Finder _preset(String label) => find.widgetWithText(FilterChip, label);

Future<void> _openReminder(
  WidgetTester tester,
  _DelayedReminderService service,
  ReminderKind kind,
) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [reminderServiceProvider.overrideWithValue(service)],
      child: MaterialApp(
        scaffoldMessengerKey: rootScaffoldMessengerKey,
        home: Scaffold(body: ReminderSettingsCard(kind: kind)),
      ),
    ),
  );
  await tester.pump();
  await tester.tap(find.text(kind.titleKey));
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('day changes stay interactive while the latest choice saves', (
    tester,
  ) async {
    final service = _DelayedReminderService();
    await _openReminder(tester, service, ReminderKind.clockIn);
    final repeatOn = find.text('Repeat on');
    final detailsPosition = tester.getTopLeft(repeatOn);

    await tester.tap(_preset('Weekends'));
    await tester.pump();
    expect(tester.widget<FilterChip>(_preset('Weekends')).selected, isTrue);
    expect(find.textContaining('Weekends ·'), findsOneWidget);
    expect(tester.widget<Switch>(find.byType(Switch)).onChanged, isNotNull);

    await tester.tap(_preset('Weekdays'));
    await tester.pump();
    await tester.tap(_preset('Every day'));
    await tester.pump();
    expect(service.writes.single.$1, ReminderSetting.weekend);
    expect(tester.widget<FilterChip>(_preset('Every day')).selected, isTrue);
    expect(tester.getTopLeft(repeatOn), detailsPosition);

    service.writes.first.$2.complete(true);
    await tester.pump();
    expect(service.writes, hasLength(2));
    expect(service.writes.last.$1, ReminderSetting.allDays);
    service.writes.last.$2.complete(true);
    await tester.pumpAndSettle();
    expect(find.textContaining('Every day ·'), findsOneWidget);
    expect(service.loads, 1);
  });

  testWidgets('a failed day save restores the previous choice in place', (
    tester,
  ) async {
    final service = _DelayedReminderService();
    await _openReminder(tester, service, ReminderKind.clockOut);

    await tester.tap(_preset('Weekends'));
    await tester.pump();
    service.writes.single.$2.complete(false);
    await tester.pumpAndSettle();

    expect(tester.widget<FilterChip>(_preset('Weekdays')).selected, isTrue);
    expect(find.textContaining('Weekdays ·'), findsOneWidget);
    expect(find.text('Repeat on'), findsOneWidget);
    expect(find.textContaining('Allow notifications'), findsOneWidget);
    expect(service.loads, 1);
  });
}
