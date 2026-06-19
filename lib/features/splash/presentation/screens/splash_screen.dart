import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:office_hr/features/splash/presentation/providers/splash_ui_provider.dart';

class SplashScreen extends HookConsumerWidget {
  final String nextRoute;

  const SplashScreen({super.key, required this.nextRoute});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final splash = ref.watch(splashUiDataProvider);
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 1100),
    );

    final fade = CurvedAnimation(
      parent: controller,
      curve: Curves.easeOutCubic,
    );
    final slide = Tween<Offset>(
      begin: const Offset(0, 0.16),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOutCubic));
    final scale = Tween<double>(
      begin: 0.9,
      end: 1.0,
    ).animate(CurvedAnimation(parent: controller, curve: Curves.easeOutBack));

    useEffect(() {
      controller.forward();
      final timer = Timer(splash.navigationDelay, () {
        if (context.mounted) {
          context.go(nextRoute);
        }
      });
      return timer.cancel;
    }, [controller, context.mounted, nextRoute, splash.navigationDelay]);

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF071422), Color(0xFF0B2342), Color(0xFF0E665F)],
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: -140,
              right: -110,
              child: _BackdropOrb(color: Color(0x33FFFFFF), size: 280),
            ),
            const Positioned(
              left: -120,
              bottom: -140,
              child: _BackdropOrb(color: Color(0x334CE1C9), size: 260),
            ),
            Positioned.fill(
              child: IgnorePointer(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: const Alignment(0, -0.5),
                      radius: 1.1,
                      colors: [
                        Colors.white.withValues(alpha: 0.08),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FadeTransition(
                    opacity: fade,
                    child: SlideTransition(
                      position: slide,
                      child: ScaleTransition(
                        scale: scale,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                            child: Container(
                              constraints: const BoxConstraints(maxWidth: 420),
                              padding: const EdgeInsets.fromLTRB(
                                24,
                                28,
                                24,
                                22,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white.withValues(alpha: 0.12),
                                border: Border.all(
                                  color: Colors.white.withValues(alpha: 0.18),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withValues(alpha: 0.22),
                                    blurRadius: 40,
                                    offset: const Offset(0, 18),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    width: 96,
                                    height: 96,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: splash.isProduction
                                            ? const [
                                                Color(0xFF34D399),
                                                Color(0xFF10B981),
                                              ]
                                            : const [
                                                Color(0xFF7DD3FC),
                                                Color(0xFF38BDF8),
                                              ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: splash.isProduction
                                              ? const Color(
                                                  0xFF10B981,
                                                ).withValues(alpha: 0.35)
                                              : const Color(
                                                  0xFF38BDF8,
                                                ).withValues(alpha: 0.35),
                                          blurRadius: 28,
                                          spreadRadius: 2,
                                        ),
                                      ],
                                    ),
                                    child: const Icon(
                                      Icons.apartment_rounded,
                                      color: Colors.white,
                                      size: 46,
                                    ),
                                  ),
                                  const SizedBox(height: 22),
                                  Text(
                                    splash.title,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w800,
                                          letterSpacing: -1.0,
                                        ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    splash.subtitle,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: Colors.white.withValues(
                                            alpha: 0.82,
                                          ),
                                          height: 1.35,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  const SizedBox(height: 18),
                                  _EnvironmentBadge(
                                    label: splash.badge,
                                    isProduction: splash.isProduction,
                                  ),
                                  const SizedBox(height: 24),
                                  Wrap(
                                    alignment: WrapAlignment.center,
                                    spacing: 10,
                                    runSpacing: 10,
                                    children: splash.chips
                                        .map(
                                          (chip) => _FeatureChip(
                                            icon: chip.icon,
                                            label: chip.label,
                                          ),
                                        )
                                        .toList(growable: false),
                                  ),
                                  const SizedBox(height: 28),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(999),
                                    child: LinearProgressIndicator(
                                      minHeight: 7,
                                      backgroundColor: Colors.white.withValues(
                                        alpha: 0.12,
                                      ),
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        splash.isProduction
                                            ? const Color(0xFF34D399)
                                            : const Color(0xFF7DD3FC),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 18,
                                        height: 18,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2.2,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                Colors.white.withValues(
                                                  alpha: 0.86,
                                                ),
                                              ),
                                        ),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        splash.status,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              color: Colors.white.withValues(
                                                alpha: 0.78,
                                              ),
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _EnvironmentBadge extends StatelessWidget {
  final String label;
  final bool isProduction;

  const _EnvironmentBadge({required this.label, required this.isProduction});

  @override
  Widget build(BuildContext context) {
    final tone = isProduction
        ? const Color(0xFF34D399)
        : const Color(0xFF7DD3FC);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(999),
        color: tone.withValues(alpha: 0.14),
        border: Border.all(color: tone.withValues(alpha: 0.22)),
      ),
      child: Text(
        label.toUpperCase(),
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.1,
        ),
      ),
    );
  }
}

class _FeatureChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FeatureChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(999),
        border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: Colors.white),
          const SizedBox(width: 8),
          Text(
            label,
            style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _BackdropOrb extends StatelessWidget {
  final Color color;
  final double size;

  const _BackdropOrb({required this.color, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(colors: [color, color.withValues(alpha: 0.0)]),
      ),
    );
  }
}
