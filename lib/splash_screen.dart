import 'dart:async';

import 'package:dropshpper_app/src/view/onboarding/onboarding/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        Duration(seconds: 30),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => OnbordingScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomSheet: Container(
        height: 100,
        color: Colors.black,
        child: SpinKitFoldingCube(
          size: 40,
          duration: Duration(milliseconds: 1000),
          itemBuilder: (_, int index) {
            return DecoratedBox(
              position: DecorationPosition.background,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Colors.orange.shade100,
                    Colors.orange,
                  ],
                ),
                // color: Colors.white,
                color: Colors.orange,
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
                          'assets/images/splash_logo.png',
                          // color: Colors.black,
                          height: 180,
                          width: 180,
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
