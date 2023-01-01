import 'package:flutter/material.dart';

class ColorSchemeDark {
  static ColorSchemeDark? _instance;
  static ColorSchemeDark get instance {
    _instance ??= ColorSchemeDark._init();
    return _instance!;
  }

  ColorSchemeDark._init();

  final Color baseWhite = const Color(0xffECECEC);
  final Color baseBlack = const Color(0xff000000);
}
