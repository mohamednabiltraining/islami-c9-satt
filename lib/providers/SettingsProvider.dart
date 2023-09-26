import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLocale = 'en';

  void changeLocale(String newLocale) {
    if (newLocale == currentLocale) return;
    currentLocale = newLocale;
    notifyListeners();
  }

  void changeTheme(ThemeMode newTheme) {
    if (currentTheme == newTheme) {
      return;
    }
    currentTheme = newTheme;
    notifyListeners();
  }

  String getMainBackground() {
    return currentTheme == ThemeMode.dark
        ? 'assets/images/main_background_dark.png'
        : 'assets/images/main_background.jpg';
  }

  bool isDarkEnabled() {
    return currentTheme == ThemeMode.dark;
  }
}
