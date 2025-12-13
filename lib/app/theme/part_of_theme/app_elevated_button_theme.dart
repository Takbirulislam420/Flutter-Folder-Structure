import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/core/const/app_colors.dart';

class AppElevatedButtonTheme {
  static final ElevatedButtonThemeData lightButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      elevation: 2,
    ),
  );

  static final ElevatedButtonThemeData darkButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.whiteColor,
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      elevation: 2,
    ),
  );
}
