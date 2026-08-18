import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/screens/login_screen.dart';

void main() {
  testWidgets('login screen renders its credential fields', (
    WidgetTester tester,
  ) async {
    final theme = ThemeData.light();
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          home: LoginScreenContent(
            theme: theme,
            colorScheme: theme.colorScheme,
            textTheme: theme.textTheme,
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Username'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('LOGIN'), findsOneWidget);
  });
}
