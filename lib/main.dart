import 'package:flutter/material.dart';
import 'package:flutter_app/config/themes.dart';
import 'package:flutter_app/main_app.dart';
import 'package:flutter_app/Elements/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('settings');
  bool isDark = false;
  ThemeData themeData = themeDataLight;
  Box box = Hive.box('settings');
  isDark = box.get('theme', defaultValue: false);
  themeData = (isDark ? themeDataDark : themeDataLight);

  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(isDark: isDark, themeData: themeData),
      child: MainApp(),
    ),
  );
}
