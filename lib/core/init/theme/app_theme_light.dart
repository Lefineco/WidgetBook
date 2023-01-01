import 'package:flutter/material.dart';

import '../../constants/app/app_constants.dart';
import 'app_theme.dart';
import 'light/light_theme_interface.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    _instance ??= AppThemeLight._init();
    return _instance!;
  }

  AppThemeLight._init();

  ThemeData get theme => ThemeData(
      fontFamily: ApplicationConstants.FONT_FAMILY,
      textTheme: textTheme(),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorSchemeLight.baseFormFillColor,
        hintStyle: textThemeLight.headline6.copyWith(color: colorSchemeLight.baseBlack),
        labelStyle: textThemeLight.headline6.copyWith(color: colorSchemeLight.baseBlack, fontWeight: FontWeight.w400),
        helperStyle: textThemeLight.subtitle2.copyWith(color: colorSchemeLight.baseDarkGrey),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      chipTheme: chipThemeData(),
      iconTheme: _iconThemeData(),
      radioTheme: RadioThemeData(
        fillColor: MaterialStatePropertyAll(
          colorSchemeLight.baseBlack,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
          side: BorderSide(color: colorSchemeLight.baseDarkGrey, width: 2),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
          fillColor: MaterialStatePropertyAll(
            colorSchemeLight.baseBlack,
          ),
          checkColor: MaterialStatePropertyAll(colorSchemeLight.baseGrey)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: colorSchemeLight.baseBlack,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      colorScheme: _appColorScheme().copyWith(),
      scaffoldBackgroundColor: colorSchemeLight.baseWhite,
      elevatedButtonTheme: elevatedButton());

  ChipThemeData chipThemeData() {
    return ChipThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      //8px, 15px, 8px, 15px

      backgroundColor: colorSchemeLight.baseBlack,
    );
  }

  IconThemeData _iconThemeData() {
    return IconThemeData(color: colorSchemeLight.baseWhite);
  }

  ElevatedButtonThemeData elevatedButton() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorSchemeLight.baseBlack,
        padding: const EdgeInsets.only(bottom: 20, left: 25, right: 20, top: 25),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(144, 56),
      ),
    );
  }

  ColorScheme _appColorScheme() => ColorScheme.dark().copyWith(
        primary: colorSchemeLight.baseWhite,
      );

  TextTheme textTheme() {
    return TextTheme(
        headline1: textThemeLight.headline1,
        headline2: textThemeLight.headline2,
        headline3: textThemeLight.headline3,
        headline4: textThemeLight.headline4,
        headline5: textThemeLight.headline5,
        headline6: textThemeLight.headline6,
        subtitle1: textThemeLight.subtitle1.copyWith(color: colorSchemeLight.baseBlack),
        subtitle2: textThemeLight.subtitle2.copyWith(color: colorSchemeLight.baseBlack));
  }
}
