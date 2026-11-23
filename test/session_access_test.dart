import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/router/app_router.dart';
import 'package:office_hr/features/auth/data/models/auth_session_model.dart';
import 'package:office_hr/features/auth/domain/entities/auth_session.dart';
import 'package:office_hr/features/auth/domain/session_access.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/dashboard/presentation/views/dashboard.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/presentation/providers/attendance_provider.dart';
import 'package:office_hr/features/home/presentation/providers/clock_request_provider.dart';
import 'package:office_hr/features/user_profile/presentation/screens/company_screen.dart';

AuthSession _session(
  List<(String, String, String)> grants, {
  String role = 'Custom role',
  bool platform = false,
}) => AuthSessionModel.fromJson({
  'user': {'id': 'me', 'username': 'Alex'},
  'active_company': {'id': 'company', 'name': 'Example Company'},
  'role': {'name': role, 'is_platform': platform},
  'permissions': [
    for (final (resource, action, scope) in grants)
      {'resource': resource, 'action': action, 'scope': scope},
  ],
}).toEntity();

void main() {
  test('wildcards and duplicates resolve to the strongest matching grant', () {
    final access = SessionAccess(
      _session([
        ('*', '*', 'own'),
        ('punch', '*', 'subordinates'),
        ('punch', 'view', 'department'),
        ('punch', 'view', 'all'),
      ]),
    );

    expect(access.scopeFor('punch', 'view'), PermissionScope.department);
    expect(access.scopeFor('punch', 'approve'), PermissionScope.subordinates);
    expect(access.scopeFor('leave', 'view'), PermissionScope.own);
    expect(access.reviewLeave, isFalse);
    expect(access.viewCompany, isFalse);
  });

  test('only the platform flag bypasses the grant list', () {
    final namedAdmin = SessionAccess(
      _session([
        ('employee', 'view', 'invalid'),
        ('*', '*', 'all'),
      ], role: 'Platform Admin'),
    );
    final platform = SessionAccess(_session([], platform: true));

    expect(namedAdmin.viewOtherEmployees, isFalse);
    expect(namedAdmin.viewCompany, isFalse);
    expect(platform.scopeFor('policy', 'view'), PermissionScope.all);
    expect(platform.viewOtherEmployees, isTrue);
  });

  test('self-service access does not unlock employee scanning or review', () {
    final access = SessionAccess(
      _session([
        ('employee', 'view', 'own'),
        ('punch', 'view', 'own'),
        ('punch', 'request', 'own'),
      ], role: 'Manager'),
    );

    expect(access.team, isFalse);
    expect(canOpenAppRoute(access, AppRoutes.staffIdCard), isTrue);
    expect(canOpenAppRoute(access, AppRoutes.qrScanner), isFalse);
    expect(
      canOpenAppRoute(access, '${AppRoutes.userDetails}/:id', userId: 'me'),
      isTrue,
    );
    expect(
      canOpenAppRoute(access, '${AppRoutes.userDetails}/:id', userId: 'other'),
      isFalse,
    );
    expect(
      canOpenAppRoute(
        access,
        AppRoutes.clockRequestDetail,
        extra: const ClockRequest(userId: 'me'),
      ),
      isTrue,
    );
    expect(
      canOpenAppRoute(
        access,
        AppRoutes.clockRequestDetail,
        extra: const ClockRequest(userId: 'other'),
      ),
      isFalse,
    );
    expect(
      canOpenAppRoute(
        access,
        AppRoutes.clockRequestDetail,
        extra: const ClockRequestRouteArgs(
          request: ClockRequest(userId: 'other'),
        ),
      ),
      isFalse,
    );
  });

  testWidgets('dashboard hides ungranted features before loading their data', (
    tester,
  ) async {
    final container = ProviderContainer(
      overrides: [
        getTodayAttendanceUsecaseProvider.overrideWith(
          (_) => throw StateError('Unexpected attendance query'),
        ),
        pendingClockRequestsBadgeCountProvider.overrideWith(
          (_) => throw StateError('Unexpected review query'),
        ),
      ],
    );
    addTearDown(container.dispose);
    await container.read(currentUserProvider.future);
    await container
        .read(currentUserProvider.notifier)
        .setSession(_session([('leave', 'create', 'own')], role: 'Top Admin'));
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: container,
        child: const MaterialApp(home: Dashboard()),
      ),
    );
    await tester.pumpAndSettle();
    expect(find.byType(BottomNavigationBar), findsNothing);
    expect(find.byIcon(Icons.notifications_none_rounded), findsNothing);
    expect(container.exists(getTodayAttendanceUsecaseProvider), isFalse);
    expect(container.exists(pendingClockRequestsBadgeCountProvider), isFalse);

    await tester.tap(find.byIcon(Icons.menu));
    await tester.pumpAndSettle();
    expect(find.text('Leave'), findsOneWidget);
    expect(find.text('Payslips'), findsNothing);
    expect(find.text('Company Information'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets(
    'router closes protected content when session grants are revoked',
    (tester) async {
      final container = ProviderContainer(
        overrides: [isAuthenticatedProvider.overrideWithValue(true)],
      );
      addTearDown(container.dispose);
      await container.read(currentUserProvider.future);
      final user = container.read(currentUserProvider.notifier);
      await user.setSession(_session([('company', 'view', 'company')]));
      final router = container.read(appRouterProvider);
      router.go(AppRoutes.company);
      await tester.pumpWidget(
        UncontrolledProviderScope(
          container: container,
          child: MaterialApp.router(routerConfig: router),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(CompanyScreen), findsOneWidget);

      await user.setSession(_session([]));
      await tester.pumpAndSettle();
      expect(find.byType(CompanyScreen), findsNothing);
      expect(
        find.text('You do not have permission to perform this action.'),
        findsOneWidget,
      );

      await user.setSession(_session([('company', 'view', 'company')]));
      router.go(AppRoutes.dashboard);
      await tester.pumpAndSettle();
      router.push<void>(AppRoutes.company);
      await tester.pumpAndSettle();
      expect(find.byType(CompanyScreen), findsOneWidget);

      await user.setSession(_session([]));
      await tester.pumpAndSettle();
      expect(find.byType(CompanyScreen), findsNothing);
      await tester.pumpWidget(const SizedBox.shrink());
    },
  );
}
