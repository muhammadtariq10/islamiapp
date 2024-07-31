import 'package:flutter/material.dart';

class SettingProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  String language = "en";

  void changeTheme(ThemeMode selectedthememode) {
    themeMode = selectedthememode;
    notifyListeners();
  }

  void changeLanguage(String languageCode) {
    language = languageCode;
    notifyListeners();
  }
}
