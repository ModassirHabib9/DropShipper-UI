import 'package:dropshpper_app/sender_src/view/onboarding/auth/sign_up_Auth.dart';
import 'package:dropshpper_app/sender_src/widgets/appbar_back_btn.dart';
import 'package:dropshpper_app/sender_src/widgets/my_custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors_resource.dart';
import '../../../../sender_src/utils/images.dart';
import '../../../../sender_src/widgets/my_button.dart';
import '../../../widgets/my_custom_password.dart';
import '../started/started_page.dart';

class LoginAuthScreen extends StatelessWidget {
  const LoginAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
          width: double.infinity,
          child: Image.asset(
            Images.bottom_wave,
            // width: double.infinity,
            fit: BoxFit.fitWidth,
          )),
      appBar: AppBar(
          backgroundColor: colorWhite,
          elevation: 0,
          leading: AppbarBackButton()),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 12, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40.h),
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 20.sp),
            ),
            Text(
              "Hello there, Login to continue",
              style: TextStyle(fontSize: 16.sp),
            ),
            SizedBox(height: 20.h),
            Text("  Email Address"),
            MyCustomTextField(
                hint: "user@email.com", prefixIcon: Icon(Icons.email)),
            SizedBox(height: 20.h),
            Text("  Password"),
            MyCustomPassword(
              // controller: passwordController,
              prefixIcon: const Icon(Icons.vpn_key),
              hint: "Password",
            ),
            SizedBox(height: 10.h),
            Container(
              alignment: Alignment.centerRight,
              width: double.infinity,
              child: Text("Forgot Password?",
                  style: TextStyle(
                    color: colorRed,
                  )),
            ),
            MyCustomButton(
              mergin: EdgeInsets.only(top: 40, bottom: 20),
              colorss: appMainColor,
              text: "LOGIN",
              onPressedbtn: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => StartedScreen(),
                  ),
                );
              },
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: RichText(
                  text: const TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(color: colorBlack),
                children: [
                  TextSpan(
                    text: "SIGN UP",
                    style: TextStyle(
                      color: appMainColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
