import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_notifier.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Settings'),
      centerTitle: true,
      ),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Dark Theme'),
            value: themeNotifier.isDarkMode,
            onChanged: (value) {
              themeNotifier.toggleTheme(); // Toggle the theme
            },
          ),
        ],
      ),
    );
  }
}
