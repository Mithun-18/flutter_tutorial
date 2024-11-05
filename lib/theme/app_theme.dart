import 'package:flutter/material.dart';
import 'package:testflutter/common/app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.white),
    useMaterial3: true,
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        titleSmall: const TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
        ),
        titleMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
          color: AppColors.charcoal,
        ),
        displayMedium: TextStyle(
            fontSize: 28.0,
            color: AppColors.salmon,
            fontWeight: FontWeight.w400),
        headlineLarge: const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 36.0,
        ),
        headlineSmall: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.dimGray,
        ),
        labelLarge: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: AppColors.dimGray,
        ),
        labelMedium: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 12,
          color: AppColors.white,
        ),
        labelSmall: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 10,
          color: AppColors.charcoal,
        )),
    cardTheme: CardTheme(color: AppColors.white),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((state) {
          return AppColors.salmon;
        }),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.salmon,
      unselectedItemColor: AppColors.silverGrey,
      enableFeedback: true,
    ),
  );
}
