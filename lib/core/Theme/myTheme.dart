import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MyTheme with ChangeNotifier{
  static bool isDark = false;

  ThemeMode currentTheme(){
    return isDark? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme(){
    isDark = !isDark;
    notifyListeners();
  }
}