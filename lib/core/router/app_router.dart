import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/features/dashboard/presentation/screens/dashboard.dart';
import 'package:office_hr/features/splash/presentation/screens/splash_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/company_setup_screen.dart';
import 'package:office_hr/features/auth/presentation/screens/login_screen.dart';

abstract final class AppRoutes {
  static const splash = '/';
  static const dashboard = '/dashboard';
  static const home = '/home';
  static const companySetup = '/company-setup';
  static const login = '/login';
}

final appRouterProvider = Provider<GoRouter>((_) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (_, _) => const SplashScreen(nextRoute: AppRoutes.companySetup),
      ),
      GoRoute(
        path: AppRoutes.companySetup,
        builder: (_, _) => const CompanySetupScreen(),
      ),
      GoRoute(
        path: AppRoutes.login,
        builder: (_, _) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.dashboard,
        builder: (_, _) => const Dashboard(),
      ),
    ],
  );
});
