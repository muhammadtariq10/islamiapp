import 'package:flutter/material.dart';

class AppTheme {
  static const primarylight = Color(0xFFB7935F);
  static const gold = Color(0xFFFACC1D);
  static const primarydark = Color(0xFF141A2E);
  static const white = Color(0xFFF8F8F8);
  static const black = Color(0xFF242424);

  static ThemeData lightTheme = ThemeData(
    primaryColorLight: primarylight,
    textTheme: const TextTheme(
        headlineSmall:
            TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: black),
        titleLarge:
            TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: black)),
    appBarTheme: const AppBarTheme(
        foregroundColor: black,
        color: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: black,
        )),
    primaryColor: primarylight,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primarylight,
      selectedItemColor: black,
      unselectedItemColor: white,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppTheme.white),
      trackColor: WidgetStatePropertyAll(primarylight),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColorDark: primarydark,
    textTheme: const TextTheme(
        headlineSmall:
            TextStyle(fontSize: 25, fontWeight: FontWeight.w400, color: gold),
        titleLarge:
            TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: white)),
    appBarTheme: const AppBarTheme(
      foregroundColor: white,
      color: Colors.transparent,
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: white,
      ),
    ),
    primaryColor: primarydark,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: primarydark,
      selectedItemColor: gold,
      unselectedItemColor: white,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(AppTheme.white),
      trackColor: WidgetStatePropertyAll(primarylight),
    ),
  );
}
