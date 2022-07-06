import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:dropshpper_app/src/utils/images.dart';
import 'package:dropshpper_app/src/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_auth.dart';

class SocialAuthScreen extends StatelessWidget {
  const SocialAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset(Images.pic_1),
            SizedBox(height: 20),
            Text(
              "Let's get Started",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            MyCustomButton(
              mergin: EdgeInsets.all(10),
              colorss: appMainColor,
              text: "CONTINUE TO LOGIN",
              onPressedbtn: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => LoginAuthScreen(),
                  ),
                );
              },
            ),
            MyCustomButton(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: colorGray),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: colorWhite,
              text: "CONTINUE TO SIGNUP",
              text_color: colorBlack,
              onPressedbtn: () {},
            ),
            SizedBox(height: 20),
            MyCustomButton(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: colorGray),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: colorWhite,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 45, child: Image.asset(Images.google_btn)),
                  const Text(
                    "Continue with Google",
                    style: TextStyle(color: colorBlack),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            MyCustomButton(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: colorGray),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: colorWhite,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 45, child: Image.asset(Images.facebook_btn)),
                  const Text(
                    "Continue with Facebook",
                    style: TextStyle(color: colorBlack),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            MyCustomButton(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: colorGray),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: colorWhite,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 45, child: Image.asset(Images.apple_btn)),
                  const Text(
                    "Continue with Apply ID",
                    style: TextStyle(color: colorBlack),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
