import 'package:flutter/material.dart';

const Color appMainColor = Color(0xffFFBB17);
Color splashColor = Color(0xFFFFE0B2);
const Color colorBlue = Color(0xFF2196F3);
const Color colorBlack = Color(0xFF000000);
const Color colorSplash = Color(0xFF383A3E);
const Color colorTransprent = Color(00000000);
const Color colorWhite = Color(0xFFFFFFFF);
const Color colorRed = Color(0xFFF30A0A);
const Color colorGray = Color(0xFF6C757D);
const Color colorGray_onboarding = Color(0xFFF0F0F0);
const Color colorYellow = Color(0xFFFFEB3B);
const Color colorTeal = Color(0xFF009688);

class ColorResources {
  static const Map<int, Color> colorMap = {
    50: Color(0x10192D6B),
    100: Color(0x20192D6B),
    200: Color(0x30192D6B),
    300: Color(0x40192D6B),
    400: Color(0x50192D6B),
    500: Color(0x60192D6B),
    600: Color(0x70192D6B),
    700: Color(0x80192D6B),
    800: Color(0x90192D6B),
    900: Color(0xff192D6B),
  };

  static const MaterialColor PRIMARY_MATERIAL =
      MaterialColor(0xFF192D6B, colorMap);
}
