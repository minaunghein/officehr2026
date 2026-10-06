import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/company_content.dart';
import 'package:office_hr/features/user_profile/presentation/widgets/profile_content.dart';

void main() {
  for (final brightness in Brightness.values) {
    testWidgets('profile sections work on a narrow screen in $brightness', (
      tester,
    ) async {
      await _pump(tester, ProfileContent(session: _session()), brightness);
      expect(tester.takeException(), isNull);
      expect(find.text('Employment details'), findsOneWidget);
      expect(find.text('Full Time'), findsOneWidget);

      final personal = find.widgetWithText(ChoiceChip, 'Personal');
      await tester.ensureVisible(personal);
      await tester.tap(personal);
      await tester.pumpAndSettle();
      expect(find.text('Personal information'), findsOneWidget);
      expect(find.text('Family and background'), findsOneWidget);
      expect(tester.takeException(), isNull);

      final account = find.widgetWithText(ChoiceChip, 'Account');
      await tester.ensureVisible(account);
      await tester.tap(account);
      await tester.pumpAndSettle();
      expect(find.text('Account details'), findsOneWidget);
      expect(find.text('Change password'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets(
      'company details remain readable with large text in $brightness',
      (tester) async {
        await _pump(tester, CompanyContent(session: _session()), brightness);
        expect(find.text('Online presence'), findsOneWidget);
        expect(find.text('Regional services'), findsOneWidget);
        expect(find.text('Website'), findsOneWidget);

        final address = find.text('Office address');
        await tester.ensureVisible(address);
        await tester.tap(address);
        await tester.pumpAndSettle();
        expect(
          find.text(
            'A long office street address with building and floor details',
          ),
          findsOneWidget,
        );
        expect(tester.takeException(), isNull);
      },
    );
  }

  testWidgets(
    'an account without an employee record still exposes contact and account details',
    (tester) async {
      final session = _session();
      await _pump(
        tester,
        ProfileContent(
          session: session.copyWith(
            user: session.user.copyWith(employee: null),
          ),
        ),
        Brightness.light,
      );
      expect(
        find.text('No employment record is linked to this account.'),
        findsOneWidget,
      );
      expect(find.text(session.email), findsOneWidget);
      await tester.tap(find.widgetWithText(ChoiceChip, 'Account'));
      await tester.pumpAndSettle();
      expect(find.text('Account details'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}

Future<void> _pump(
  WidgetTester tester,
  Widget content,
  Brightness brightness,
) async {
  tester.view.physicalSize = const Size(320, 800);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFF0052CC),
            brightness: brightness,
          ),
        ),
        builder: (context, child) => MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: const TextScaler.linear(1.6)),
          child: child!,
        ),
        home: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(18),
            child: SelectionArea(child: content),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
}

AuthSession _session() => AuthSessionModel.fromJson({
  'user': {
    'id': 'user-1',
    'username': 'employee',
    'email': 'employee.long.address@example.com',
    'employee': {
      'basic_info': {
        'first_name': 'Alexandra',
        'last_name': 'Montgomery Williams',
        'height': 175,
      },
      'contact_info': {
        'email': 'employee.long.address@example.com',
        'phone': '09767796445',
      },
      'family_info': {
        'father_name': 'James Montgomery',
        'number_of_family_number': 3,
      },
      'work_info': {
        'employee_code': 'EMP-1212',
        'employment_status': 'ACTIVE',
        'employment_type': 'FULL_TIME',
        'department': {'title': 'Human resources and administration'},
        'position': {'title': 'Senior people operations specialist'},
      },
    },
  },
  'active_company': {
    'id': 'company-1',
    'name': 'International enterprise services organisation',
    'sc': 'IESO',
    'active': true,
    'generalinfo': {
      'website': 'https://example.com/company/information',
      'office_address': {
        'street':
            'A long office street address with building and floor details',
      },
    },
    'socialmedia': {'linkedin': 'https://linkedin.com/company/example'},
  },
  'companies': [
    {
      'id': 'company-1',
      'name': 'International enterprise services organisation',
    },
    {
      'id': 'company-2',
      'name': 'Regional services',
      'sc': 'RS',
      'active': false,
    },
  ],
  'role': {'name': 'Employee'},
}).toEntity();
