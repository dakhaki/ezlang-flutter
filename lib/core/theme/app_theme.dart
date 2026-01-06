import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:eZlang/core/theme/app_palette.dart';

class AppTheme {
  static final darkThemeMode = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppPalette.darkBackground,
    cardColor: AppPalette.darkCardColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      backgroundColor: AppPalette.primaryAccent,
      elevation: 0,
      foregroundColor: AppPalette.softWhite,
    ),
    colorScheme: const ColorScheme.dark(
      primary: AppPalette.primaryAccent,
      secondary: AppPalette.secondaryAccent,
      surface: AppPalette.darkBackground,
      onPrimary: AppPalette.softWhite,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppPalette.softWhite,
    ),
    textTheme: ThemeData.dark().textTheme.apply(
      fontFamily: 'BubblegumSans',
      bodyColor: AppPalette.softWhite,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppPalette.softWhite),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.pinkAccent,
        foregroundColor: AppPalette.softWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      hintStyle: TextStyle(color: AppPalette.softWhite.withAlpha(128)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppPalette.darkBackground,
    ),
  );
  static final lightThemeMode = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppPalette.lightBackground,
    cardColor: AppPalette.lightCardColor,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: AppPalette.primaryAccent,
      elevation: 0,
      foregroundColor: AppPalette.softWhite,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppPalette.primaryAccent,
      secondary: AppPalette.secondaryAccent,
      surface: AppPalette.lightBackground,
      onPrimary: AppPalette.softWhite,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppPalette.softBlack,
    ),
    textTheme: ThemeData.light().textTheme.apply(
      fontFamily: 'BubblegumSans',
      bodyColor: AppPalette.softBlack,
      displayColor: AppPalette.softBlack,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppPalette.softBlack),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppPalette.purpleAccent,
        foregroundColor: AppPalette.softWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: InputBorder.none,
      hintStyle: TextStyle(color: AppPalette.softBlack.withAlpha(128)),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppPalette.lightBackground,
    ),
  );
}
