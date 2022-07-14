import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';

class MyFontTheme {
  MyFontTheme._();

  static final TextStyle onboarding = TextStyle(
    fontSize: 18.sp,
  );

  static final TextStyle font_16 = TextStyle(
    color: colorWhite,
    fontSize: 16.sp,
  );
  static final TextStyle font_header = TextStyle(fontSize: 10.sp);

  static final TextStyle bodyText1 = TextStyle(
      color: Color(0xffAEABC9),
      fontSize: 14,
      letterSpacing: 1.2,
      fontWeight: FontWeight.w500);

  static final TextStyle bodyTextMessage =
      TextStyle(fontSize: 12, letterSpacing: 1);

  static final TextStyle bodyTextTime = TextStyle(
    color: Color(0xffAEABC9),
    fontSize: 11,
    fontWeight: FontWeight.normal,
    letterSpacing: 1,
  );
}
