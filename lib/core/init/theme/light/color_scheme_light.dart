import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instance;
  static ColorSchemeLight get instance {
    _instance ??= ColorSchemeLight._init();
    return _instance!;
  }

  ColorSchemeLight._init();

  final Color baseText = const Color(0xffFFFFFF);
  final Color baseBlack = const Color(0xff000000);

  final Color baseGrey = const Color(0xffE1E1E1);
  final Color baseDarkGrey = const Color(0xff777777);
  final Color baseFormFillColor = Color(0xffF6F6F6);

  final Color baseWhite = const Color(0xffECECEC);
}
