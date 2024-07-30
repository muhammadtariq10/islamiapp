import 'package:flutter/material.dart';

class AppTheme {
  static const primary = Color(0xFFB7935F);
  static const white = Color(0xFFF8F8F8);
  static const black = Color(0xFF242424);

  static ThemeData lightTheme = ThemeData(
      textTheme: const TextTheme(
          headlineSmall: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w400, color: black),
          titleLarge: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w400, color: black)),
      appBarTheme: AppBarTheme(
          color: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: black,
          )),
      primaryColor: primary,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primary,
        selectedItemColor: black,
        unselectedItemColor: white,
      ));
  static ThemeData darkTheme = ThemeData();
}
