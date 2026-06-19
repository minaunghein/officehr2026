import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum OfficeHrTheme {
  light,
  dark;

  bool get isLight => this == light;
  bool get isDark => this == dark;
}

extension OfficeHrThemeExt on OfficeHrTheme {
  String get displayName {
    switch (this) {
      case OfficeHrTheme.light:
        return 'Light';
      case OfficeHrTheme.dark:
        return 'Dark';
    }
  }

  String get key {
    switch (this) {
      case OfficeHrTheme.light:
        return 'light';
      case OfficeHrTheme.dark:
        return 'dark';
    }
  }

  static OfficeHrTheme fromKey(String key) {
    return OfficeHrTheme.values.firstWhere(
      (e) => e.key == key,
      orElse: () => OfficeHrTheme.light,
    );
  }
}

class AppTheme {
  AppTheme._();

  static ThemeData getTheme(OfficeHrTheme fobMatchTheme) {
    switch (fobMatchTheme) {
      case OfficeHrTheme.light:
        return _lightTheme();
      case OfficeHrTheme.dark:
        return _darkTheme();
    }
  }

  static ThemeData _lightTheme() {
    return _buildTheme(
      brightness: Brightness.light,
      primary: const Color(0xFF0052CC),
      secondary: const Color(0xFF627180),
      background: const Color(0xFFF9F9FF),
      surface: const Color(0xFFFFFFFF),
      surfaceVariant: const Color(0xFFE8EDFF),
      onPrimary: const Color(0xFFFFFFFF),
      onBackground: const Color(0xFF041B3C),
      outline: const Color(0xFFDFE1E6),
      error: const Color(0xFFBA1A1A),
      gradient: const LinearGradient(
        colors: [Color(0xFF0052CC), Color(0xFF003D9B)],
      ),
    );
  }

  static ThemeData _darkTheme() {
    return _buildTheme(
      brightness: Brightness.dark,
      primary: const Color(0xFFB2C5FF),
      secondary: const Color(0xFFA1ABB8),
      background: const Color(0xFF041B3C),
      surface: const Color(0xFF1D3052),
      surfaceVariant: const Color(0xFF2E3F5C),
      onPrimary: const Color(0xFF001848),
      onBackground: const Color(0xFFEDF0FF),
      outline: const Color(0xFF434654),
      error: const Color(0xFFBA1A1A),
      gradient: const LinearGradient(
        colors: [Color(0xFFB2C5FF), Color(0xFF8BA4F5)],
      ),
    );
  }

  static ThemeData _buildTheme({
    required Brightness brightness,
    required Color primary,
    required Color secondary,
    required Color background,
    required Color surface,
    required Color surfaceVariant,
    required Color onPrimary,
    required Color onBackground,
    required Color outline,
    required Color error,
    required LinearGradient gradient,
  }) {
    final textTheme = TextTheme(
      // Design: headline-lg (28px, 700, 34px height, -0.02em spacing)
      displayLarge: GoogleFonts.inter(
        color: onBackground,
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 34 / 28,
        letterSpacing: -0.02 * 28,
      ),
      // Design: headline-lg-mobile (24px, 700, 30px height, -0.02em spacing)
      displayMedium: GoogleFonts.inter(
        color: onBackground,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 30 / 24,
        letterSpacing: -0.02 * 24,
      ),
      // Design: headline-md (20px, 600, 26px height, -0.01em spacing)
      displaySmall: GoogleFonts.inter(
        color: onBackground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 26 / 20,
        letterSpacing: -0.01 * 20,
      ),
      // Design: headline-lg (28px, 700, 34px height)
      headlineLarge: GoogleFonts.inter(
        color: onBackground,
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 34 / 28,
        letterSpacing: -0.02 * 28,
      ),
      // Design: headline-md (20px, 600, 26px height)
      headlineMedium: GoogleFonts.inter(
        color: onBackground,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 26 / 20,
        letterSpacing: -0.01 * 20,
      ),
      // Design: body-lg (16px, 400, 24px height)
      headlineSmall: GoogleFonts.inter(
        color: onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      ),
      // Design: body-lg (16px, 400, 24px height)
      titleLarge: GoogleFonts.inter(
        color: onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      ),
      // Design: body-md (14px, 400, 20px height)
      titleMedium: GoogleFonts.inter(
        color: onBackground,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
      ),
      // Design: label-md (12px, 600, 16px height, 0.02em spacing)
      titleSmall: GoogleFonts.inter(
        color: onBackground,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 16 / 12,
        letterSpacing: 0.02 * 12,
      ),
      // Design: body-lg (16px, 400, 24px height)
      bodyLarge: GoogleFonts.inter(
        color: onBackground,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
      ),
      // Design: body-md (14px, 400, 20px height)
      bodyMedium: GoogleFonts.inter(
        color: onBackground,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
      ),
      // Design: label-sm (11px, 500, 14px height)
      bodySmall: GoogleFonts.inter(
        color: onBackground.withValues(alpha: 0.6),
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 14 / 11,
      ),
      // Design: label-md (12px, 600, 16px height, 0.02em spacing)
      labelLarge: GoogleFonts.inter(
        color: onBackground,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        height: 16 / 12,
        letterSpacing: 0.02 * 12,
      ),
      // Design: label-sm (11px, 500, 14px height)
      labelMedium: GoogleFonts.inter(
        color: onBackground,
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 14 / 11,
      ),
      // Design: label-sm (11px, 500, 14px height)
      labelSmall: GoogleFonts.inter(
        color: onBackground,
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 14 / 11,
      ),
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: ColorScheme(
        brightness: brightness,
        primary: primary,
        onPrimary: onPrimary,
        secondary: secondary,
        onSecondary: Colors.white,
        error: error,
        onError: Colors.white,
        surface: surface,
        onSurface: onBackground,
        surfaceContainerHighest: surfaceVariant,
        outline: outline,
      ),
      scaffoldBackgroundColor: background,
      textTheme: textTheme,
      appBarTheme: AppBarTheme(
        backgroundColor: background,
        elevation: 0,
        titleTextStyle: GoogleFonts.inter(
          color: onBackground,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          height: 26 / 20,
          letterSpacing: -0.01 * 20,
        ),
        iconTheme: IconThemeData(color: onBackground),
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: outline, width: 1),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          minimumSize: const Size(48, 48),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: onBackground,
          side: BorderSide(color: onBackground, width: 2),
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          textStyle: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          minimumSize: const Size(48, 48),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceVariant,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: outline),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: outline),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(color: Color(0xFFBA1A1A)),
        ),
        labelStyle: GoogleFonts.inter(
          color: onBackground.withValues(alpha: 0.6),
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
        hintStyle: GoogleFonts.inter(
          color: onBackground.withValues(alpha: 0.4),
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: surface,
        selectedItemColor: primary,
        unselectedItemColor: onBackground.withValues(alpha: 0.4),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedLabelStyle: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          height: 14 / 11,
        ),
        unselectedLabelStyle: GoogleFonts.inter(
          fontSize: 11,
          fontWeight: FontWeight.w500,
          height: 14 / 11,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: onBackground,
        contentTextStyle: GoogleFonts.inter(
          color: background,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        behavior: SnackBarBehavior.floating,
      ),
      dividerTheme: DividerThemeData(color: outline, thickness: 1),
      iconTheme: IconThemeData(color: onBackground),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primary;
          }
          return null;
        }),
        checkColor: WidgetStateProperty.all(onPrimary),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return primary;
          }
          return onBackground.withValues(alpha: 0.6);
        }),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: surfaceVariant,
        selectedColor: primary,
        labelStyle: GoogleFonts.inter(
          color: onBackground,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
        ),
        secondaryLabelStyle: GoogleFonts.inter(
          color: onPrimary,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: BorderSide.none,
      ),
      dataTableTheme: DataTableThemeData(
        headingTextStyle: GoogleFonts.inter(
          color: onBackground,
          fontSize: 12,
          fontWeight: FontWeight.w600,
          height: 16 / 12,
        ),
        dataTextStyle: GoogleFonts.inter(
          color: onBackground,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 20 / 14,
        ),
        dividerThickness: 1,
      ),
      extensions: [
        OfficeHrThemeExtension(
          gradient: gradient,
          primaryGlow: primary.withValues(alpha: 0.3),
          cardGradient: LinearGradient(
            colors: [surface, surface],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ],
    );
  }
}

@immutable
class OfficeHrThemeExtension extends ThemeExtension<OfficeHrThemeExtension> {
  const OfficeHrThemeExtension({
    required this.gradient,
    required this.primaryGlow,
    required this.cardGradient,
  });

  final LinearGradient gradient;
  final Color primaryGlow;
  final LinearGradient cardGradient;

  @override
  OfficeHrThemeExtension copyWith({
    LinearGradient? gradient,
    Color? primaryGlow,
    LinearGradient? cardGradient,
  }) {
    return OfficeHrThemeExtension(
      gradient: gradient ?? this.gradient,
      primaryGlow: primaryGlow ?? this.primaryGlow,
      cardGradient: cardGradient ?? this.cardGradient,
    );
  }

  @override
  OfficeHrThemeExtension lerp(OfficeHrThemeExtension? other, double t) {
    if (other == null) return this;
    return OfficeHrThemeExtension(
      gradient: gradient,
      primaryGlow: Color.lerp(primaryGlow, other.primaryGlow, t)!,
      cardGradient: cardGradient,
    );
  }
}
