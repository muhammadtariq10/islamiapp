import 'package:flutter/material.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/quran/sura_datails_screen.dart';
import 'package:islamiapp/bottom_navigation_bar.dart/hadeth/hadeth_datails.dart';
import 'package:islamiapp/home_screen.dart';
import 'package:islamiapp/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (_) => HomeScreen(),
        SuraDatailsScreen.routeName: (_) => SuraDatailsScreen(),
        HadethDatails.routeName: (_) => HadethDatails(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}
