import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:office_hr/features/settings/data/reminder_service.dart';
import 'package:office_hr/features/settings/presentation/widgets/weekday_selector.dart';

void main() {
  Future<void> pump(
    WidgetTester tester, {
    required Set<int> selected,
    required ValueChanged<Set<int>> onChanged,
    bool enabled = true,
    ThemeData? theme,
  }) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: theme,
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 360,
              child: WeekdaySelector(
                selected: selected,
                enabled: enabled,
                onChanged: onChanged,
              ),
            ),
          ),
        ),
      ),
    );
  }

  testWidgets('presets pick whole day groups', (tester) async {
    Set<int>? result;
    await pump(
      tester,
      selected: ReminderSetting.allDays,
      onChanged: (days) => result = days,
    );

    await tester.tap(find.widgetWithText(FilterChip, 'Weekdays'));
    expect(result, ReminderSetting.weekdays);

    await tester.tap(find.widgetWithText(FilterChip, 'Weekends'));
    expect(result, ReminderSetting.weekend);
  });

  testWidgets('a single weekday can be toggled off', (tester) async {
    Set<int>? result;
    await pump(
      tester,
      selected: ReminderSetting.weekdays,
      onChanged: (days) => result = days,
    );

    await tester.tap(find.text('M').last);
    expect(result, {2, 3, 4, 5});

    await tester.tap(find.text('S').first);
    expect(result, {1, 2, 3, 4, 5, 6});
  });

  testWidgets('a disabled selector does not emit changes', (tester) async {
    var called = false;
    await pump(
      tester,
      selected: ReminderSetting.allDays,
      enabled: false,
      onChanged: (_) => called = true,
    );

    await tester.tap(find.text('M').last);
    await tester.pump();
    expect(called, isFalse);
  });

  for (final brightness in Brightness.values) {
    testWidgets('presets have distinct readable colors in ${brightness.name}', (
      tester,
    ) async {
      final scheme = ColorScheme.fromSeed(
        seedColor: const Color(0xFF0052CC),
        brightness: brightness,
      );
      await pump(
        tester,
        selected: ReminderSetting.weekdays,
        onChanged: (_) {},
        theme: ThemeData(colorScheme: scheme),
      );
      FilterChip preset(String label) =>
          tester.widget(find.widgetWithText(FilterChip, label));

      final selected = preset('Weekdays');
      final unselected = preset('Weekends');
      final selectedFill = selected.color!.resolve({WidgetState.selected})!;
      final unselectedFill = unselected.color!.resolve({})!;

      expect(selectedFill, isNot(unselectedFill));
      expect(
        _contrast(selected.labelStyle!.color!, selectedFill),
        greaterThan(4.5),
      );
      expect(
        _contrast(unselected.labelStyle!.color!, unselectedFill),
        greaterThan(4.5),
      );
    });
  }
}

double _contrast(Color first, Color second) {
  final luminances = [first.computeLuminance(), second.computeLuminance()]
    ..sort();
  return (luminances.last + 0.05) / (luminances.first + 0.05);
}
