import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = 'en';

  // shared preferences
  // key -> value

  SettingsProvider() {
    // load settings configurations from
    //shared preferences if exist
  }

  void changeLanguage(String newLangCode) {
    languageCode = newLangCode;
    // save lang -> newLangCode
    notifyListeners();
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    //save theme -> 'dark'
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    // save theme -> 'light'
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
