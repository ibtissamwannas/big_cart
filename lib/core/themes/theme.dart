import 'package:big_cart/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.backgroundWhite,
    primaryColor: AppColors.primary,
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundWhite,
      iconTheme: IconThemeData(color: AppColors.textPrimary),
      titleTextStyle: TextStyle(
        color: AppColors.textPrimary,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.font15Medium.copyWith(color: Colors.black),
      bodyMedium: AppTextStyles.font12Medium.copyWith(color: Colors.black87),
      bodySmall: AppTextStyles.font10Medium.copyWith(color: Colors.black54),
      headlineLarge: AppTextStyles.font25Bold,
    ),
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primary,
      secondary: AppColors.primaryDark,
      surface: AppColors.backgroundWhite,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: AppColors.primaryDark,
    fontFamily: 'Poppins',
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.black,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyLarge: AppTextStyles.font15Medium.copyWith(color: Colors.white),
      bodyMedium: AppTextStyles.font12Medium.copyWith(color: Colors.white70),
      bodySmall: AppTextStyles.font10Medium.copyWith(color: Colors.white54),
      headlineLarge: AppTextStyles.font25Bold,
      headlineMedium: AppTextStyles.font20Bold,
    ),

    colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.primaryDark,
      secondary: AppColors.primary,
      surface: Colors.black,
    ),
  );
}
