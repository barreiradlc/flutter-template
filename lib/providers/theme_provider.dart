import 'package:flutter/material.dart';

import '../themes/darkTheme.dart';
import '../themes/lightTheme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode theme = ThemeMode.system;

  bool get isDarkTheme => theme == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    theme = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class SystemThemes {
  static final darkTheme = DarkTheme().theme;
  static final lightTheme = LightTheme().theme;
}
