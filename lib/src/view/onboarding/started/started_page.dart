import 'package:dropshpper_app/src/utils/images.dart';
import 'package:dropshpper_app/src/view/onboarding/driver_info/driver_information.dart';
import 'package:dropshpper_app/src/view/onboarding/started/widgets/custum_card.dart';
import 'package:dropshpper_app/src/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth/sign_up_Auth.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 8, right: 8, top: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 50),
            Image.asset(Images.pic_1),
            SizedBox(height: 20),
            Text(
              "Select to get started",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            MyCustomCard(
              title: "Continue as Driver",
              subtitle:
                  "Lorem ipsum dolor sit amet, consectetur Nam dapibus ac libero id blandit.",
              image: Image.asset(Images.start_pic_1),
              onPressed: () {
                Get.to(Home_Screen_Siven7());
              },
            ),
            MyCustomCard(
              title: "Continue Sender & Receiver",
              subtitle:
                  "Lorem ipsum dolor sit amet, consectetur Nam dapibus ac libero id blandit.",
              image: Image.asset(Images.start_pic_2),
            )
          ],
        ),
      ),
    );
  }
}
