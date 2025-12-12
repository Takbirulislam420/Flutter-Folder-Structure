import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/core/const/app_colors.dart';

class BottomNavBarTheme {
  static const BottomNavigationBarThemeData lightNavBarThemeData =
      BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.focusedNavItemColor, // Active nav item
        unselectedItemColor: AppColors.onPrimary, // Inactive nav item
      );

  static const BottomNavigationBarThemeData darkNavBarThemeData =
      BottomNavigationBarThemeData(
        backgroundColor: AppColors.primary,
        selectedItemColor: AppColors.focusedNavItemColor, // Active nav item
        unselectedItemColor: AppColors.onPrimary, // Inactive nav item
      );
}
