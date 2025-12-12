import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/theme/my_app_dark_theme.dart';
import 'package:top_talent_agency/app/theme/my_app_light_theme.dart';

// This is a custom theme file with complete ColorScheme fields
// Each color is commented to explain its purpose

class CustomTheme {
  /// ☀️ LIGHT THEME
  static final ThemeData lightTheme = MyAppLightTheme.lightTheme;

  /// 🌑 DARK THEME
  static final ThemeData darkTheme = MyAppDarkTheme.darkTheme;
}
