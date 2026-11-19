import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/services/dialog_service.dart';
import 'package:office_hr/features/announcement/presentation/screens/announcement_screen.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/dashboard/presentation/views/dashboard.dart';
import 'package:office_hr/features/home/domain/entities/attendance_amendment.dart';
import 'package:office_hr/features/home/domain/entities/clock_request.dart';
import 'package:office_hr/features/home/domain/entities/team_attendance.dart';
import 'package:office_hr/features/home/presentation/screens/amendment_approvals_screen.dart';
import 'package:office_hr/features/home/presentation/screens/attendance_amendment_detail.dart';
import 'package:office_hr/features/home/presentation/screens/attendance_requests.dart';
import 'package:office_hr/features/home/presentation/screens/clock_request_detail_screen.dart';
import 'package:office_hr/features/home/presentation/screens/clock_requests_screen.dart';
import 'package:office_hr/features/home/presentation/screens/team_member_attendance_detail.dart';
import 'package:office_hr/features/payslip/domain/entities/payslip.dart';
import 'package:office_hr/features/payslip/presentation/screens/payslip_detail_screen.dart';
import 'package:office_hr/features/payslip/presentation/screens/payslip_screen.dart';
import 'package:office_hr/features/public_holiday/presentation/screens/public_holiday_screen.dart';
import 'package:office_hr/features/splash/presentation/screens/splash_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/company_setup_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/login_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/change_password_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/company_screen.dart';
import 'package:office_hr/features/user_profile/presentation/screens/staff_id_card_screen.dart';
import 'package:office_hr/features/leave/domain/entities/leave_request.dart';
import 'package:office_hr/features/leave/presentation/screens/create_leave_request_screen.dart';
import 'package:office_hr/features/leave/presentation/screens/leave_approvals_screen.dart';
import 'package:office_hr/features/leave/presentation/screens/leave_request_detail_screen.dart';
import 'package:office_hr/features/leave/presentation/screens/leave_screen.dart';
import 'package:office_hr/features/overtime/presentation/screens/create_overtime_request_screen.dart';
import 'package:office_hr/features/overtime/presentation/screens/overtime_approvals_screen.dart';
import 'package:office_hr/features/overtime/presentation/screens/overtime_screen.dart';
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
  static const payslipDetail = '/payslip/detail';
  static const publicHoliday = '/public-holidays';
  static const announcements = '/announcements';
  static const clockRequests = '/clock-requests';
  static const clockRequestDetail = '/clock-requests/detail';
  static const attendanceRequests = '/attendance/requests';
  static const attendanceAmendmentDetail = '/attendance/requests/detail';
  static const amendmentRequests = '/attendance/amendments';
  static const leave = '/leave';
  static const createLeave = '/leave/new';
  static const leaveRequests = '/leave/requests';
  static const leaveDetail = '/leave/detail';
  static const overtime = '/overtime';
  static const createOvertime = '/overtime/new';
  static const overtimeRequests = '/overtime/requests';
  static const teamMemberAttendance = '/team/attendance';
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
        path: AppRoutes.payslipDetail,
        builder: (_, state) {
          final payslip = state.extra;
          if (payslip is! Payslip) {
            return const Scaffold(
              body: Center(child: Text('Payslip not found')),
            );
          }
          return PayslipDetailScreen(initial: payslip);
        },
      ),
      GoRoute(
        path: AppRoutes.publicHoliday,
        builder: (_, _) => const PublicHolidayScreen(),
      ),
      GoRoute(
        path: AppRoutes.announcements,
        builder: (_, _) => const AnnouncementScreen(),
      ),
      GoRoute(
        path: AppRoutes.clockRequests,
        builder: (_, _) => const ClockRequestsScreen(),
      ),
      GoRoute(
        path: AppRoutes.clockRequestDetail,
        builder: (_, state) {
          final extra = state.extra;
          if (extra is ClockRequestRouteArgs) {
            return ClockRequestDetailScreen(
              initial: extra.request,
              canDecide: extra.canDecide,
            );
          }
          if (extra is ClockRequest) {
            return ClockRequestDetailScreen(initial: extra);
          }
          return const Scaffold(body: Center(child: Text('Request not found')));
        },
      ),
      GoRoute(
        path: AppRoutes.attendanceRequests,
        builder: (_, _) => const AttendanceRequestsScreen(),
      ),
      GoRoute(
        path: AppRoutes.attendanceAmendmentDetail,
        builder: (_, state) {
          final extra = state.extra;
          if (extra is AttendanceAmendmentRouteArgs) {
            return AttendanceAmendmentDetailScreen(
              initial: extra.amendment,
              canApprove: extra.canApprove,
            );
          }
          if (extra is AttendanceAmendment) {
            return AttendanceAmendmentDetailScreen(initial: extra);
          }
          return const Scaffold(
            body: Center(child: Text('Request not found')),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.amendmentRequests,
        builder: (_, _) => const AmendmentApprovalsScreen(),
      ),
      GoRoute(path: AppRoutes.leave, builder: (_, _) => const LeaveScreen()),
      GoRoute(
        path: AppRoutes.createLeave,
        builder: (_, _) => const CreateLeaveRequestScreen(),
      ),
      GoRoute(
        path: AppRoutes.overtime,
        builder: (_, _) => const OvertimeScreen(),
      ),
      GoRoute(
        path: AppRoutes.createOvertime,
        builder: (_, _) => const CreateOvertimeRequestScreen(),
      ),
      GoRoute(
        path: AppRoutes.overtimeRequests,
        builder: (_, _) => const OvertimeApprovalsScreen(),
      ),
      GoRoute(
        path: AppRoutes.leaveRequests,
        builder: (_, _) => const LeaveApprovalsScreen(),
      ),
      GoRoute(
        path: AppRoutes.leaveDetail,
        builder: (_, state) {
          final extra = state.extra;
          if (extra is LeaveRequestRouteArgs) {
            return LeaveRequestDetailScreen(
              initial: extra.request,
              canApprove: extra.canApprove,
            );
          }
          if (extra is LeaveRequest) {
            return LeaveRequestDetailScreen(initial: extra);
          }
          return const Scaffold(
            body: Center(child: Text('Leave request not found')),
          );
        },
      ),
      GoRoute(
        path: AppRoutes.teamMemberAttendance,
        builder: (_, state) {
          final attendance = state.extra;
          if (attendance is! TeamAttendance) {
            return const Scaffold(
              body: Center(child: Text('Attendance not found')),
            );
          }
          return TeamMemberAttendanceDetailScreen(attendance: attendance);
        },
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
