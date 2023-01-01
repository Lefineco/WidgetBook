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
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.black,
        hintStyle: textThemeDark.headline6.copyWith(color: colorSchemeDark.baseBlack),
        labelStyle: textThemeDark.headline6.copyWith(color: colorSchemeDark.baseBlack, fontWeight: FontWeight.w400),
        helperStyle: textThemeDark.subtitle2.copyWith(color: colorSchemeDark.baseDarkGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      elevatedButtonTheme: elevatedButton(),
      iconTheme: _iconThemeData(),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStatePropertyAll(colorSchemeDark.baseWhite),
        fillColor: MaterialStatePropertyAll(colorSchemeDark.baseBlack),
      ),
      colorScheme: _appColorScheme());

  IconThemeData _iconThemeData() => IconThemeData(color: colorSchemeDark.baseWhite);

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
