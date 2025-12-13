import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/core/const/app_colors.dart';
import 'package:top_talent_agency/app/theme/part_of_theme/app_bar_theme.dart';
import 'package:top_talent_agency/app/theme/part_of_theme/app_elevated_button_theme.dart';
import 'package:top_talent_agency/app/theme/part_of_theme/app_text_field_theme.dart';
import 'package:top_talent_agency/app/theme/part_of_theme/app_text_theme.dart';
import 'package:top_talent_agency/app/theme/part_of_theme/bottom_nav_bar_theme.dart';

class MyAppLightTheme {
  /// ☀️ LIGHT THEME
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,

    colorScheme: const ColorScheme(
      brightness: Brightness.light,

      // MAIN BRAND COLOR (Buttons, FAB, Toggled items)
      primary: AppColors.primary, // Main brand color (still dark)
      onPrimary: AppColors.onPrimary, // Text/icons on primary
      primaryContainer: Color(
        0xFFE3E7F5,
      ), // Used for elevated buttons, chips, etc.
      onPrimaryContainer: Color(0xFF0A1020), // Text/icons on primaryContainer
      // SECONDARY COLOR (less emphasis, backgrounds, cards)
      secondary: Color(0xffE0E0E0), // Light grey for secondary elements
      onSecondary: Color(0xff333333), // Text/icons on secondary background
      secondaryContainer: Color(
        0xffF3F3F3,
      ), // Used for cards, side menus, containers
      onSecondaryContainer: Color(
        0xff1A1A1A,
      ), // Text/icons on secondaryContainer
      // TERTIARY COLOR (optional 3rd color for accents)
      tertiary: Color(0xFF8A90A6), // Muted blue-grey for highlights
      onTertiary: Colors.white, // Text/icons on tertiary
      tertiaryContainer: Color(
        0xFFE7E9F2,
      ), // Used for chips, subtle UI elements
      onTertiaryContainer: Color(0xFF1D2233), // Text/icons on tertiaryContainer
      // ERROR COLORS
      error: Color(0xffB00020), // Standard material error color
      onError: Colors.white, // Text/icons on error
      errorContainer: Color(
        0xFFFCD8DF,
      ), // Background for error inputs/snackbars
      onErrorContainer: Color(0xFF370B13), // Dark text/icon on errorContainer
      // SURFACE COLORS (cards, sheets, menus, backgrounds)
      surface: Colors.white, // Main surface (scaffold, cards)
      onSurface: Color(0xff121212), // Text/icons on surface
      surfaceContainerHighest: Color(
        0xffECECEC,
      ), // Used by list tiles, dividers, outlines
      onSurfaceVariant: Color(0xff444444), // Text/icons on surfaceVariant
      // OUTLINES & DIVIDERS
      outline: Color(0xFF9FA2A8), // Border color for inputs, outlines
      outlineVariant: Color(0xFFC4C6CC), // Lighter border for subtle separators
      // SHADOW / SCRIM
      shadow: Colors.black26, // Shadow behind cards, dialogs
      scrim: Colors.black54, // Overlay behind dialogs, drawers
      // INVERSE COLORS (Dark mode surfaces inside light mode)
      inverseSurface: Color(0xFF1A1A1A),
      onInverseSurface: Colors.white,
      inversePrimary: Color(0xFF7489FF), // Used when primary appears on dark bg
    ),

    scaffoldBackgroundColor: AppColors.primary,
    inputDecorationTheme: AppTextFieldTheme.lightThemeDecoration(),
    elevatedButtonTheme: AppElevatedButtonTheme.lightButton,

    appBarTheme: AppBarThemes.lightAppBar,
    bottomNavigationBarTheme: BottomNavBarTheme.lightNavBarThemeData,
    textTheme: AppTextTheme.lightTextTheme,
  );
}
