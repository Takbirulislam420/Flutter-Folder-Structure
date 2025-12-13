import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._(); // private constructor

  static const TextTheme lightTextTheme = TextTheme(
    // DISPLAY
    displayLarge: TextStyle(
      fontSize: 57,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.25,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 45,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    // HEADLINE
    headlineLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: .4,
      color: Colors.black,
    ),
    headlineSmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    // TITLE
    titleLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      letterSpacing: .4,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: .4,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      letterSpacing: .4,
      color: Colors.black,
    ),

    // BODY
    bodyLarge: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

    // LABEL
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    labelSmall: TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  );
}
