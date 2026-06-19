import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:office_hr/features/splash/presentation/providers/splash_ui_provider.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashScreen extends HookConsumerWidget {
  final String nextRoute;

  const SplashScreen({super.key, required this.nextRoute});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splash = ref.watch(splashUiDataProvider);
    final packageInfo = useState<PackageInfo?>(null);

    useEffect(() {
      Future.microtask(() async {
        final info = await PackageInfo.fromPlatform();
        packageInfo.value = info;
      });
      return null;
    }, []);

    useEffect(() {
      final timer = Timer(splash.navigationDelay, () {
        if (context.mounted) {
          context.go(nextRoute);
        }
      });
      return timer.cancel;
    }, [context.mounted, nextRoute, splash.navigationDelay]);

    return Scaffold(
      backgroundColor: const Color(0xFF071422),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: splash.isProduction
                          ? const [Color(0xFF34D399), Color(0xFF10B981)]
                          : const [Color(0xFF7DD3FC), Color(0xFF38BDF8)],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: splash.isProduction
                            ? const Color(0xFF10B981).withValues(alpha: 0.35)
                            : const Color(0xFF38BDF8).withValues(alpha: 0.35),
                        blurRadius: 28,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.apartment_rounded,
                    color: Colors.white,
                    size: 56,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  splash.title,
                  style: const TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    margin: const EdgeInsets.only(bottom: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: splash.isProduction
                          ? const Color(0xFF34D399).withValues(alpha: 0.2)
                          : const Color(0xFF7DD3FC).withValues(alpha: 0.2),
                      border: Border.all(
                        color: splash.isProduction
                            ? const Color(0xFF34D399).withValues(alpha: 0.4)
                            : const Color(0xFF7DD3FC).withValues(alpha: 0.4),
                        width: 1.5,
                      ),
                    ),
                    child: Text(
                      splash.badge.toUpperCase(),
                      style: const TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                  if (packageInfo.value != null)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: Text(
                        'v${packageInfo.value!.version}',
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.white.withValues(alpha: 0.6),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
