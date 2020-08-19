import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  changeTheme() {
    _isDark = !_isDark;
    notifyListeners();
  }
}
