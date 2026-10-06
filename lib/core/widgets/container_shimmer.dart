import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:office_hr/core/theme/theme_notifier.dart';
import 'package:shimmer/shimmer.dart';

class ContainerShimmer extends ConsumerWidget {
  final Color? baseColor;
  final Color? highlightColor;
  final double? height;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  const ContainerShimmer({
    super.key,
    this.baseColor,
    this.highlightColor,
    this.height,
    this.width,
    this.borderRadius,
    this.color,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final officeHrTheme = ref.watch(themeProvider);
    final isDark = officeHrTheme.isDark;

    final defaultBase = isDark ? const Color(0xFF2A3A55) : Colors.grey[300]!;
    final defaultHighlight = isDark
        ? const Color(0xFF344668)
        : Colors.grey[100]!;
    final defaultFill = isDark
        ? theme.colorScheme.surfaceContainerHighest
        : Colors.white;

    return Shimmer.fromColors(
      baseColor: baseColor ?? defaultBase,
      highlightColor: highlightColor ?? defaultHighlight,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: color ?? defaultFill,
          borderRadius: borderRadius ?? BorderRadius.circular(16),
        ),
      ),
    );
  }
}
