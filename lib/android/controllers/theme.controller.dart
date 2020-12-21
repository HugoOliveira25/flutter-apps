import 'package:flutter/cupertino.dart';

class ThemeController extends ChangeNotifier {
  bool isDarkTheme = false;

  static ThemeController instance = ThemeController();

  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}
