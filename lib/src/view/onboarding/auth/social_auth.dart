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
            Image.asset("assets/images/pic1.png"),
            SizedBox(height: 20),
            Text(
              "Let's get Started",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            MyCustomButton2(
              mergin: EdgeInsets.all(10),
              colorss: Colors.orange,
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
            MyCustomButton2(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: Colors.white,
              text: "CONTINUE TO SIGNUP",
              text_color: Colors.black,
              onPressedbtn: () {},
            ),
            SizedBox(height: 20),
            MyCustomButton2(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: Colors.white,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 45,
                      child: Image.asset("assets/images/googlebtn.png")),
                  const Text(
                    "Continue with Google",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            MyCustomButton2(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: Colors.white,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 45,
                      child: Image.asset(
                          "assets/images/facebook-svgrepo-com (1).png")),
                  const Text(
                    "Continue with Facebook",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            // SizedBox(height: 20),
            MyCustomButton2(
              mergin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              colorss: Colors.white,
              // text: "CONTINUE TO SIGN UP",
              onPressedbtn: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 45, child: Image.asset("assets/images/apple.png")),
                  const Text(
                    "Continue with Apply ID",
                    style: TextStyle(color: Colors.black),
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
