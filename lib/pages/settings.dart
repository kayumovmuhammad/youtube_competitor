import 'package:flutter/material.dart';
import 'package:flutter_app/Elements/theme_provider.dart';
import 'package:provider/provider.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    final themes = Theme.of(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Настройки", style: themes.textTheme.titleMedium),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Тёмная тема"),
            trailing: Switch(
              value: themeProvider.isDark,
              onChanged: (value) {
                themeProvider.changeTheme();
              },
            ),
            onTap: themeProvider.changeTheme,
          ),
        ],
      ),
      
    );
  }
}
