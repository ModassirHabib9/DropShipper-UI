import 'package:dropshpper_app/splash_screen.dart';
import 'package:dropshpper_app/src/view/onboarding/auth/login_auth.dart';
import 'package:dropshpper_app/src/view/onboarding/auth/sign_up_Auth.dart';
import 'package:dropshpper_app/src/view/onboarding/auth/social_auth.dart';
import 'package:dropshpper_app/src/view/onboarding/driver_info/custom_tabbar/widgets/custom_tabbar.dart';
import 'package:dropshpper_app/src/view/onboarding/driver_info/driver_information.dart';
import 'package:dropshpper_app/src/view/onboarding/onboarding/onboarding_screen.dart';
import 'package:dropshpper_app/src/view/onboarding/started/started_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DROPSHIPPERS APP',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: child,
        );
      },
      child: Home_Screen_Siven7(),
    );
  }
}
