import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:top_talent_agency/app/theme/app_theme.dart';
import 'package:top_talent_agency/features/auth/login/screen/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const double deviceWidth = 375.0;
  static const double deviceHeight = 812.0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(deviceWidth, deviceHeight),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Client app',
          debugShowCheckedModeBanner: false,
          theme: CustomTheme.lightTheme,
          themeMode: ThemeMode.system,
          darkTheme: CustomTheme.darkTheme,
          home: LoginScreen(),
        );
      },
    );
  }
}
