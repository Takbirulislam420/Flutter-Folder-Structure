import 'package:flutter/material.dart';

// This is a custom theme file with complete ColorScheme fields
// Each color is commented to explain its purpose

class MyAppDarkTheme {
  /// 🌑 DARK THEME
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    colorScheme: const ColorScheme(
      brightness: Brightness.dark,

      // MAIN BRAND COLOR
      primary: Color(0xFF101829), // Main brand color (still dark)
      onPrimary: Color(0xFFA8BFFF), // Text/icons on primary
      primaryContainer: Color(
        0xFF0E1424,
      ), // Slightly lighter container for dark theme
      onPrimaryContainer: Color(
        0xFFDBE4FF,
      ), // Light text/icons for dark container
      // SECONDARY COLOR
      secondary: Color(0xff23293D), // Dark grey-blue secondary surfaces
      onSecondary: Color(0xffA5A5AB), // Text/icons on secondary
      secondaryContainer: Color(0xff2E3550), // Used for elevated surfaces
      onSecondaryContainer: Color(0xffD8D9DD), // Light text/icons
      // TERTIARY
      tertiary: Color(0xFF717897), // Accent in dark mode
      onTertiary: Colors.white,
      tertiaryContainer: Color(0xFF2C3046),
      onTertiaryContainer: Color(0xFFD6D9F3),

      // ERROR
      error: Color(0xffEB3D4D),
      onError: Colors.white,
      errorContainer: Color(0xFF8C1D26),
      onErrorContainer: Color(0xFFFFDAD6),

      // SURFACES
      surface: Color(0xff161721),
      onSurface: Color(0xffF9FAFB),
      surfaceContainerHighest: Color(0xff2B2E3B),
      onSurfaceVariant: Color(0xffC4C6CC),

      // OUTLINES
      outline: Color(0xff8D8F98),
      outlineVariant: Color(0xff3C3E47),

      // SHADOW / SCRIM
      shadow: Colors.black54,
      scrim: Colors.black54,

      // INVERSE COLORS
      inverseSurface: Color(0xffF4F4F5),
      onInverseSurface: Color(0xff1A1A1A),
      inversePrimary: Color(0xFF7489FF),
    ),

    scaffoldBackgroundColor: Color(0xff161721),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff0E1424), // Dark app bar color
      foregroundColor: Color(0xffE9E9EA), // Text/icons in app bar
      elevation: 0,
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xff212432),
      selectedItemColor: Color(0xff4847F1),
      unselectedItemColor: Color(0xff777980),
    ),

    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Color(0xffF9FAFB)), // Bright text on dark bg
      bodyMedium: TextStyle(color: Color(0xffA5A5AB)), // Medium contrast text
    ),
  );
}
