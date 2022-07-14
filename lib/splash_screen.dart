import 'dart:async';

import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/sender_src/utils/images.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/choos_language/choose_language.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => ChooseLanguageScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorSplash,
      bottomSheet: Container(
        height: 100.h,
        color: colorSplash,
        child: SpinKitFoldingCube(
          size: 40.h,
          duration: Duration(milliseconds: 1000),
          itemBuilder: (_, int index) {
            return DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    splashColor,
                    appMainColor,
                  ],
                ),
                // color: Colors.white,
                color: appMainColor,
                shape: BoxShape.circle,
              ),
            );
          },
        ),
      ),
      body: Container(
          // color: Colors.black,
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SafeArea(
                child: Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      // SizedBox(height: 60),
                      Container(
                        // width: 290,
                        // height: 120,
                        padding: EdgeInsets.all(12),
                        alignment: Alignment.center,
                        child: Image.asset(
                          Images.splash_logo,
                          // color: Colors.black,
                          height: 180.h,
                          width: 180.w,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        "",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
