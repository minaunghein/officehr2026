import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/auth/presentation/providers/auth_providers.dart';
import 'package:office_hr/features/dashboard/presentation/screens/dashboard.dart';
import 'package:office_hr/features/payslip/presentation/screens/payslip_screen.dart';
import 'package:office_hr/features/user/presentation/screens/company_screen.dart';
import 'package:office_hr/features/user/presentation/screens/leave_screen.dart';
import 'package:office_hr/features/user/presentation/screens/profile_screen.dart';
import 'package:office_hr/features/splash/presentation/screens/splash_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/company_setup_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/login_screen.dart';

abstract final class AppRoutes {
  static const splash = '/';
  static const dashboard = '/dashboard';
  static const home = '/home';
  static const companySetup = '/company-setup';
  static const login = '/login';
  static const profile = '/profile';
  static const payslip = '/payslip';
  static const leave = '/leave';
  static const company = '/company';
}

final appRouterProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
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
      GoRoute(path: AppRoutes.leave, builder: (_, _) => const LeaveScreen()),
      GoRoute(
        path: AppRoutes.company,
        builder: (_, _) => const CompanyScreen(),
      ),
    ],
  );

  ref.listen(isAuthenticatedProvider, (previous, next) {
    router.refresh();
  });

  return router;
});
