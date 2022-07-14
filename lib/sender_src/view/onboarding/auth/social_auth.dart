import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/sender_src/utils/images.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/auth/sign_up_Auth.dart';
import 'package:dropshpper_app/sender_src/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../address/address_information.dart';
import 'login_auth.dart';

class SocialAuthScreen extends StatelessWidget {
  const SocialAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40.h),
            Image.asset(Images.pic_1),
            SizedBox(height: 20.h),
            Text(
              "Let's get Started",
              style: TextStyle(fontSize: 20.sp),
            ),
            SizedBox(height: 20.h),
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
                borderRadius: BorderRadius.circular(20.r),
              ),
              colorss: colorWhite,
              text: "CONTINUE TO SIGNUP",
              text_color: colorBlack,
              onPressedbtn: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => Sign_UpAuthScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 20.h),
            Text("OR"),
            SizedBox(height: 20.h),
            MyCustomButton(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: colorGray),
                borderRadius: BorderRadius.circular(20.r),
              ),
              colorss: colorWhite,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {
                Get.to(AddressLocationScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 45.w, child: Image.asset(Images.google_btn)),
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
                borderRadius: BorderRadius.circular(20.r),
              ),
              colorss: colorWhite,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {
                Get.to(AddressLocationScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 45.w, child: Image.asset(Images.facebook_btn)),
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
                borderRadius: BorderRadius.circular(20.r),
              ),
              colorss: colorWhite,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {
                Get.to(AddressLocationScreen());
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(width: 45.w, child: Image.asset(Images.apple_btn)),
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
