import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';

  void changeLanguage(String newLangCode) {
    languageCode = newLangCode;
    notifyListeners();
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  bool isDarkEnabled() {
    return themeMode == ThemeMode.dark;
  }

  String getBackgroundImage() {
    return themeMode == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/dark_main_background.png';
  }
}
