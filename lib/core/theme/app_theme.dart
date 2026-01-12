import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ezlang/core/theme/app_palette.dart';

class AppTheme {
  static const String _fontFamily = 'BubblegumSans';

  static final light = ThemeData(
    useMaterial3: true,
    fontFamily: _fontFamily,
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
      // systemOverlayStyle: SystemUiOverlayStyle.dark,
      // Override specific properties to match the theme
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: AppPalette.background,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: AppPalette.background,
      elevation: 0,
      foregroundColor: AppPalette.textPrimary,
      centerTitle: false,
    ),

    cardTheme: CardThemeData(
      color: AppPalette.cardColor,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.primary,
        foregroundColor: AppPalette.white,
        textStyle: const TextStyle(
          fontFamily: _fontFamily,
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
          fontFamily: _fontFamily,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    chipTheme: ChipThemeData(
      backgroundColor: AppPalette.skyBlue.withOpacity(0.2),
      labelStyle: const TextStyle(
        fontFamily: _fontFamily,
        color: AppPalette.textPrimary,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),

    textTheme:
        const TextTheme(
          displayLarge: TextStyle(
            color: AppPalette.textPrimary,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
          titleLarge: TextStyle(
            color: AppPalette.textPrimary,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            height: 1.2,
          ),
          bodyLarge: TextStyle(color: AppPalette.textPrimary, height: 1.5),
          bodyMedium: TextStyle(color: AppPalette.textPrimary, height: 1.5),
        ).apply(
          bodyColor: AppPalette.textPrimary,
          displayColor: AppPalette.textPrimary,
          fontFamily: _fontFamily,
        ),
  );

  static final dark = ThemeData(
    useMaterial3: true,
    fontFamily: _fontFamily,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppPalette.backgroundDark,
    cardColor: AppPalette.cardColorDark,
    primaryColor: AppPalette.primaryDark,

    colorScheme: ColorScheme.fromSeed(
      seedColor: AppPalette.primaryDark,
      brightness: Brightness.dark,
      surface: AppPalette.cardColorDark,
      primary: AppPalette.primaryDark,
      secondary: AppPalette.secondary,
      onPrimary: AppPalette.white,
      onSurface: AppPalette.textPrimaryDark,
    ),

    appBarTheme: const AppBarTheme(
      // systemOverlayStyle: SystemUiOverlayStyle.light,
      // Override specific properties to match the theme
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
        systemNavigationBarColor: AppPalette.backgroundDark,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      foregroundColor: AppPalette.textPrimaryDark,
      centerTitle: false,
    ),

    cardTheme: CardThemeData(
      color: AppPalette.cardColorDark,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.hardEdge,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.primary,
        foregroundColor: AppPalette.white,
        textStyle: const TextStyle(
          fontFamily: _fontFamily,
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

    chipTheme: ChipThemeData(
      backgroundColor: AppPalette.primaryDark.withOpacity(0.1),
      labelStyle: const TextStyle(
        fontFamily: _fontFamily,
        color: AppPalette.textPrimaryDark,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppPalette.primaryDark),
      ),
    ),

    textTheme:
        const TextTheme(
          displayLarge: TextStyle(
            color: AppPalette.textPrimaryDark,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
          titleLarge: TextStyle(
            color: AppPalette.textPrimaryDark,
            fontWeight: FontWeight.bold,
            fontSize: 24,
            height: 1.2,
          ),
          titleMedium: TextStyle(
            color: AppPalette.textSecondaryDark,
            height: 1.5,
          ),
          headlineSmall: TextStyle(
            color: AppPalette.textPrimaryDark,
            fontWeight: FontWeight.bold,
            height: 1.2,
          ),
          bodyLarge: TextStyle(color: AppPalette.textPrimaryDark, height: 1.5),
          bodyMedium: TextStyle(color: AppPalette.textPrimaryDark, height: 1.5),
        ).apply(
          bodyColor: AppPalette.textPrimaryDark,
          displayColor: AppPalette.textPrimaryDark,
          fontFamily: _fontFamily,
        ),
  );
}
