import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'dark/dark_theme_interface.dart';

class AppThemeDark extends AppTheme with IDarkTheme {
  static AppThemeDark? _instance;
  static AppThemeDark get instance {
    _instance ??= AppThemeDark._init();
    return _instance!;
  }

  AppThemeDark._init();

  ThemeData get darkTheme => ThemeData.dark().copyWith(
      textTheme: textTheme(),
      elevatedButtonTheme: elevatedButton(),
      iconTheme: IconThemeData(color: colorSchemeDark.baseWhite),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStatePropertyAll(colorSchemeDark.baseWhite),
        fillColor: MaterialStatePropertyAll(colorSchemeDark.baseBlack),
      ),
      colorScheme: _appColorScheme());

  ElevatedButtonThemeData elevatedButton() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorSchemeDark.baseBlack,
        textStyle: textThemeDark.headline6,
        padding: const EdgeInsets.only(bottom: 20, left: 25, right: 20, top: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(144, 56),
      ),
    );
  }

  ColorScheme _appColorScheme() => ColorScheme.dark().copyWith(primary: colorSchemeDark.baseBlack);

  TextTheme textTheme() {
    return TextTheme(
      headline1: textThemeDark.headline1,
      headline2: textThemeDark.headline2,
      headline3: textThemeDark.headline3,
      headline4: textThemeDark.headline4,
      headline5: textThemeDark.headline5,
      headline6: textThemeDark.headline6,
    );
  }
}
