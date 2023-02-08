import 'package:flutter/material.dart';
import '../utilities/app_shared_preferences.dart';

class DarkThemeProvider with ChangeNotifier {

  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }

}