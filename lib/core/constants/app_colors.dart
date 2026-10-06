import 'package:flutter/material.dart';

abstract class AppColors {
  // Primary colors
  static const Color primary = Color(0xFFFFFFFF);
  static const Color primaryBlue = Color(0xFF2450EB);
  static const Color primarySoft = Color(0xFFE9EEFF);
  static const Color accentYellow = Color(0xFFFFC400);
  static const Color accentRed = Color(0xFFF03E3E);
  static const Color secondary = Color(0xFF000000);
  static const Color onBackground = Color(0xFF041B3C);

  // Text colors
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textBlack = Color(0xFF0F0F0F);
  static const Color textPrimary = textBlack;
  static const Color textSecondary = Color(0xFF616161);
  static const Color textDisabled = Color(0xFF9E9E9E);

  // Background colors
  static const Color background = Color(0xFFFAFAFA);
  static const Color cardBackgroundLight = Color.fromARGB(255, 246, 247, 255);
  static const Color cardBackgroundDark = Color.fromARGB(255, 5, 37, 79);
  static const Color bottomNaviBackground = Color(0xFFF8F8F9);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF5F5F5);

  // Status colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFF9800);
  static const Color error = Color(0xFFF44336);

  // Border colors
  static const Color border = Color(0xFFE0E0E0);
  static const Color borderLight = Color(0xFFF5F5F5);
  static const Color borderDark = Color(0xFFBDBDBD);
  static const Color divider = Color(0xFFEEEEEE);

  // Neutral colors
  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey900 = Color(0xFF212121);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color tp = Color(0x00000000);

  // Overlay colors
  static const Color overlay = Color(0x80000000);
  static const Color shadow = Color(0x1A000000);
  static const Color dottedBackground = Color(0xFFE0E5FF);
  static const Color cardFieldBackground = Color(0xFF3151B7);
  static const Color lightBlue = Color(0xFFEAF0FF);
  static const Color orange = Color(0xFFFF7043);
  static const Color yellow = Color(0xFFFFB74D);
  static const Color serviceGreen = Color(0xFF16A34A);
  static const Color servicePurple = Color(0xFF7C3AED);

  // Auth colors
  static const Color loginBackground = Color(0xFFEAF0FF);
  static const Color disabledButton = Color(0xB32450EB);

  // Onboarding Colors
  static const Color onboardingStartColor = Color(0xFF2450EB);
  static const Color onboardingEndColor = Color(0xFF1841DB);

  // Gradient colors
  static const LinearGradient onboardingGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [onboardingStartColor, onboardingEndColor],
  );

  // Customer Type Colors
  static const Color onlineColor = Color(0xFF2F6EFF);
  static const Color localColor = Color(0xFFE47430);
  static const Color selectedCusTypeColor = Color(0xFFFFFFFF);
  static const Color unselectedCusTypeColor = Color(0xFFF1F5F9);
  static const Color cusSearchColor = Color(0xFFF9FAFC);
  static const Color cusNewBtnBgColor = Color(0xFFC0DBFE);
  static const Color cusNewBtnFgColor = Color(0xFF60A6FA);
  static const Color cusImgUploadColor = Color(0xFF8A96B5);

  // New Customer
  static const Color cusPrimaryColor = Color(0xFF2F6EFF);
  static const Color deepErrorColor = Color(0xFFB3261E);
  static const Color whiteBlueColor = Color(0xFFF5F8FF);
}
