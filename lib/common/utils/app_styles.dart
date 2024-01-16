import 'package:flutter/material.dart';
import 'package:online_course_app/common/utils/app_color.dart';

class AppTheme {
  static ThemeData appThemeData = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    scaffoldBackgroundColor: const Color(0xFFF5F9FF),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      centerTitle: true,
      backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: AppColors.primaryText),
    ),
  );
}
