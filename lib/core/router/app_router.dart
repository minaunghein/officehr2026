import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/services/dialog_service.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/dashboard/presentation/views/dashboard.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/presentation/screens/attendance_amendment_detail.dart';
import 'package:office_hr/features/home/presentation/screens/attendance_requests.dart';
import 'package:office_hr/features/payslip/presentation/screens/payslip_screen.dart';
import 'package:office_hr/features/public_holiday/presentation/screens/public_holiday_screen.dart';
import 'package:office_hr/features/splash/presentation/screens/splash_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/company_setup_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/login_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/change_password_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/company_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/staff_id_card_screen.dart';
import 'package:office_hr/features/leave/presentation/screens/create_leave_request_screen.dart';
import 'package:office_hr/features/leave/presentation/screens/leave_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/profile_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/qr_scanner_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/user_details_screen.dart';

abstract final class AppRoutes {
  static const splash = '/';
  static const dashboard = '/dashboard';
  static const home = '/home';
  static const companySetup = '/company-setup';
  static const login = '/login';
  static const profile = '/profile';
  static const payslip = '/payslip';
  static const publicHoliday = '/public-holidays';
  static const attendanceRequests = '/attendance/requests';
  static const attendanceAmendmentDetail = '/attendance/requests/detail';
  static const leave = '/leave';
  static const createLeave = '/leave/new';
  static const company = '/company';
  static const changePassword = '/change-password';
  static const staffIdCard = '/staff-id-card';
  static const qrScanner = '/scan';
  static const userDetails = '/users';
}

final appRouterProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    navigatorKey: DialogService.navigatorKey,
    initialLocation: AppRoutes.splash,
    redirect: (context, state) {
      final isAuthenticated = ref.read(isAuthenticatedProvider);

      if (!isAuthenticated &&
          state.matchedLocation != AppRoutes.splash &&
          state.matchedLocation != AppRoutes.companySetup &&
          state.matchedLocation != AppRoutes.login) {
        return AppRoutes.login;
      }

      if (isAuthenticated && state.matchedLocation == AppRoutes.login) {
        return AppRoutes.dashboard;
      }

      return null;
    },
    routes: [
      GoRoute(path: AppRoutes.splash, builder: (_, _) => const SplashScreen()),
      GoRoute(
        path: AppRoutes.companySetup,
        builder: (_, _) => const CompanySetupScreen(),
      ),
      GoRoute(path: AppRoutes.login, builder: (_, _) => const LoginScreen()),
      GoRoute(path: AppRoutes.dashboard, builder: (_, _) => Dashboard()),
      GoRoute(
        path: AppRoutes.profile,
        builder: (_, _) => const ProfileScreen(),
      ),
      GoRoute(
        path: AppRoutes.payslip,
        builder: (_, _) => const PayslipScreen(),
      ),
      GoRoute(
        path: AppRoutes.publicHoliday,
        builder: (_, _) => const PublicHolidayScreen(),
      ),
      GoRoute(
        path: AppRoutes.attendanceRequests,
        builder: (_, _) => const AttendanceRequestsScreen(),
      ),
      GoRoute(
        path: AppRoutes.attendanceAmendmentDetail,
        builder: (_, state) {
          final amendment = state.extra;
          if (amendment is! AttendanceAmendment) {
            return const Scaffold(
              body: Center(child: Text('Request not found')),
            );
          }
          return AttendanceAmendmentDetailScreen(initial: amendment);
        },
      ),
      GoRoute(path: AppRoutes.leave, builder: (_, _) => const LeaveScreen()),
      GoRoute(
        path: AppRoutes.createLeave,
        builder: (_, _) => const CreateLeaveRequestScreen(),
      ),
      GoRoute(
        path: AppRoutes.company,
        builder: (_, _) => const CompanyScreen(),
      ),
      GoRoute(
        path: AppRoutes.changePassword,
        builder: (_, _) => const ChangePasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.staffIdCard,
        builder: (_, _) => const StaffIdCardScreen(),
      ),
      GoRoute(
        path: AppRoutes.qrScanner,
        builder: (_, _) => const QrScannerScreen(),
      ),
      GoRoute(
        path: '${AppRoutes.userDetails}/:id',
        builder: (_, state) =>
            UserDetailsScreen(userId: state.pathParameters['id'] ?? ''),
      ),
    ],
  );

  ref.listen(isAuthenticatedProvider, (previous, next) {
    router.refresh();
  });

  return router;
});
