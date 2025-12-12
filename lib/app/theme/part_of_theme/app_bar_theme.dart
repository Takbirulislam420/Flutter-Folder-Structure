import 'package:flutter/material.dart';
import 'package:top_talent_agency/app/core/const/app_colors.dart';

class AppBarThemes {
  static const AppBarTheme lightAppBar = AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: AppColors.onPrimary,
    elevation: 0,
  );

  static const AppBarTheme darkAppBar = AppBarTheme(
    backgroundColor: Color(0xff1A1A2E), // Dark mode color
    foregroundColor: Colors.white,
    elevation: 0,
  );
}
