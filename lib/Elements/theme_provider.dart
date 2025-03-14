import 'package:flutter/material.dart';
import 'package:flutter_app/config/themes.dart';
import 'package:hive_flutter/hive_flutter.dart';

class ThemeProvider with ChangeNotifier {
  bool isDark = false;
  ThemeData themeData = themeDataLight;
  ThemeProvider({required this.isDark, required this.themeData});
  Box box = Hive.box('settings');

  void changeTheme() {
    themeData = (themeData == themeDataLight ? themeDataDark : themeDataLight);
    isDark = !isDark;
    box.put('theme', isDark); 
    notifyListeners();
  }
}
