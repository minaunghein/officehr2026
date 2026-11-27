import 'package:flutter/widgets.dart';

abstract final class AppLocale {
  static const Locale english = Locale('en');
  static const Locale myanmar = Locale('my');

  static const List<Locale> supported = [english, myanmar];
  static const Locale fallback = english;

  static bool isMyanmar(Locale locale) =>
      locale.languageCode == myanmar.languageCode;
}
