import 'package:flutter/material.dart';

/// A single canvas for document-like screens. Blend secondary text and rules
/// against that canvas rather than relying on optional ColorScheme roles.
extension DetailPageStyle on ThemeData {
  Color get detailCanvas => brightness == Brightness.dark
      ? scaffoldBackgroundColor
      : colorScheme.surface;

  Color detailInk(double opacity) => Color.alphaBlend(
    colorScheme.onSurface.withValues(alpha: opacity),
    detailCanvas,
  );

  Color get detailMuted => detailInk(0.72);
  Color get detailRule => detailInk(0.13);

  TextStyle? get detailPageTitle => textTheme.displayLarge?.copyWith(
    fontSize: 28,
    fontWeight: FontWeight.w700,
    height: 1.18,
    letterSpacing: -0.7,
  );
}
