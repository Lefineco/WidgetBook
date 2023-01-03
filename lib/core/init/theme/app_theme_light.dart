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
      scaffoldBackgroundColor: colorSchemeLight.baseScaffoldColor,
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
        animationDuration: Duration(milliseconds: 1000),
        splashFactory: InkRipple.splashFactory,
        backgroundColor: colorSchemeLight.baseBlack,
        foregroundColor: colorSchemeLight.baseWhite,
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
      button: textThemeLight.button.copyWith(color: colorSchemeLight.baseBlack),
      headline1: textThemeLight.headline1.copyWith(color: colorSchemeLight.baseBlack),
      headline2: textThemeLight.headline2.copyWith(color: colorSchemeLight.baseBlack),
      headline3: textThemeLight.headline3.copyWith(color: colorSchemeLight.baseBlack),
      headline4: textThemeLight.headline4.copyWith(color: colorSchemeLight.baseBlack),
      headline5: textThemeLight.headline5.copyWith(color: colorSchemeLight.baseBlack),
      headline6: textThemeLight.headline6.copyWith(color: colorSchemeLight.baseBlack),
      subtitle1: textThemeLight.subtitle1.copyWith(color: colorSchemeLight.baseBlack),
      subtitle2: textThemeLight.subtitle2.copyWith(color: colorSchemeLight.baseDarkGrey),
    );
  }
}
