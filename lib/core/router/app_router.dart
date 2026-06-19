import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:office_hr/features/splash/presentation/screens/splash_screen.dart';

abstract final class AppRoutes {
  static const splash = '/';
  static const home = '/home';
}

final appRouterProvider = Provider<GoRouter>((_) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    routes: [
      GoRoute(
        path: AppRoutes.splash,
        builder: (_, _) => const SplashScreen(nextRoute: AppRoutes.home),
      ),

      // GoRoute(
      //   path: AppRoutes.home,
      //   builder: (_, _) => const _HomeScreen(),
      // ),
    ],
  );
});

// class _GlowBlob extends StatelessWidget {
//   final Color color;
//   final double size;

//   const _GlowBlob({required this.color, required this.size});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size,
//       height: size,
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         gradient: RadialGradient(
//           colors: [
//             color,
//             color.withOpacity(0.0),
//           ],
//         ),
//       ),
//     );
//   }
// }
