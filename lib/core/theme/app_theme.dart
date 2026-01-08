import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ezlang/core/theme/app_palette.dart';

class AppTheme {
  static final light = ThemeData(
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

  static final dark = ThemeData(
    useMaterial3: true,
    fontFamily: 'BubblegumSans',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppPalette.backgroundDark,
    cardColor: AppPalette.cardColorDark,
    primaryColor: AppPalette.primary,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppPalette.primary,
      brightness: Brightness.dark,
      surface: AppPalette.cardColorDark,
      primary: AppPalette.primary,
      secondary: AppPalette.secondary,
      onPrimary: AppPalette.white,
      onSurface: AppPalette.textPrimaryDark,
    ),

    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: AppPalette.textPrimaryDark,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'BubblegumSans',
        color: AppPalette.textPrimaryDark,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),

    cardTheme: CardThemeData(
      color: AppPalette.cardColorDark,
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

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppPalette.cardColorDark,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white10),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white10),
      ),
      hintStyle: const TextStyle(color: Colors.white38),
    ),

    textTheme:
        const TextTheme(
          displayLarge: TextStyle(
            color: AppPalette.textPrimaryDark,
            fontWeight: FontWeight.bold,
          ),
          titleLarge: TextStyle(
            color: AppPalette.textPrimaryDark,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(color: AppPalette.textSecondaryDark),
          headlineSmall: TextStyle(
            color: AppPalette.textPrimaryDark,
            fontWeight: FontWeight.bold,
          ),
          bodyLarge: TextStyle(color: AppPalette.textPrimaryDark),
          bodyMedium: TextStyle(color: AppPalette.textPrimaryDark),
        ).apply(
          bodyColor: AppPalette.textPrimaryDark,
          displayColor: AppPalette.textPrimaryDark,
          fontFamily: 'BubblegumSans',
        ),
  );
}
