import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ezlang/core/theme/app_palette.dart';

class AppTheme {
  static final theme = ThemeData(
    useMaterial3: true,
    fontFamily: 'BubblegumSans',
    scaffoldBackgroundColor: AppPalette.background,
    cardColor: AppPalette.cardColor,
    primaryColor: AppPalette.primary, // Explicitly set for visibility

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppPalette.primary,
      background: AppPalette.background,
      surface: AppPalette.cardColor,
      primary: AppPalette.primary,
      secondary: AppPalette.secondary,
      onPrimary: AppPalette.white,
      onSurface: AppPalette.textPrimary,
    ),

    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: AppPalette.background,
      elevation: 0,
      foregroundColor: AppPalette.textPrimary,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'BubblegumSans',
        color: AppPalette.textPrimary,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),

    cardTheme: CardThemeData(
      color: AppPalette.cardColor,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(8),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.primary,
        foregroundColor: AppPalette.white,
        textStyle: const TextStyle(
          fontFamily: 'BubblegumSans',
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppPalette.primary,
        textStyle: const TextStyle(
          fontFamily: 'BubblegumSans',
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    chipTheme: ChipThemeData(
      backgroundColor: AppPalette.skyBlue.withOpacity(0.2),
      labelStyle: const TextStyle(
        fontFamily: 'BubblegumSans',
        color: AppPalette.textPrimary,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    textTheme:
        const TextTheme(
          displayLarge: TextStyle(
            color: AppPalette.textPrimary,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            color: AppPalette.textPrimary,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(color: AppPalette.textPrimary),
          bodyMedium: TextStyle(color: AppPalette.textPrimary),
        ).apply(
          bodyColor: AppPalette.textPrimary,
          displayColor: AppPalette.textPrimary,
          fontFamily: 'BubblegumSans',
        ),
  );
}
