import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lefine_project/core/init/theme/app_theme_dark.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../theme/app_theme_light.dart';

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeMode _mode;
  ThemeNotifier({ThemeMode mode = ThemeMode.dark})
      : _mode = mode,
        super(AppThemeLight.instance.theme) {
    getTheme();
  }

  ThemeMode get mode => _mode;

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final theme = prefs.getString('theme');

    if (theme == 'light') {
      _mode = ThemeMode.light;
      state = AppThemeDark.instance.darkTheme;
    } else {
      _mode = ThemeMode.dark;
      state = AppThemeLight.instance.theme;
    }
  }

  void toggleTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (_mode == ThemeMode.dark) {
      _mode = ThemeMode.light;
      state = AppThemeLight.instance.theme;
      prefs.setString('theme', 'light');
    } else {
      _mode = ThemeMode.dark;
      state = AppThemeDark.instance.darkTheme;
      prefs.setString('theme', 'dark');
    }
  }
}
