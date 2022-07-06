import 'package:dropshpper_app/src/widgets/my_custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../../../utils/colors_resource.dart';
import '../../../utils/images.dart';
import '../../../widgets/appbar_back_btn.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/my_custom_password.dart';
import '../address/address_information.dart';

class Sign_UpAuthScreen extends StatelessWidget {
  const Sign_UpAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
          width: double.infinity, child: Image.asset(Images.bottom_wave)),
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(height: 60, width: 60, child: AppbarBackButton()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Create new Account",
                            style: TextStyle(fontSize: 20),
                          ),
                          Stack(
                            // fit: StackFit.expand,
                            // fit: StackFit.loose,
                            children: [
                              CircleAvatar(
                                radius: 40,
                                // backgroundColor: Colors.black,
                                child: Image.asset(Images.profile_pic),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 10,
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  decoration: BoxDecoration(
                                    color: colorWhite,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  width: 20.w,
                                  height: 20.h,
                                  // color: Colors.white,
                                  child: Center(
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: 14,
                                      color: colorBlack,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text("  Your Name"),
                  MyCustomTextField(
                      hint: "Mudassir Khan", prefixIcon: Icon(Icons.person)),
                  SizedBox(height: 20),
                  Text("  Mobile Number"),
                  MyCustomTextField(
                      hint: "Mobile Number",
                      prefixIcon: Icon(Icons.phone_android)),
                  SizedBox(height: 20),
                  Text("  Email Address"),
                  MyCustomTextField(
                      hint: "user@email.com", prefixIcon: Icon(Icons.email)),
                  SizedBox(height: 20),
                  Text("  Password"),
                  MyCustomPassword(
                    // controller: passwordController,
                    prefixIcon: const Icon(Icons.vpn_key),
                    hint: "Password",
                  ),
                  SizedBox(height: 10),
                  MyCustomButton(
                    mergin: EdgeInsets.only(top: 10, bottom: 10),
                    colorss: appMainColor,
                    text: "LOGIN",
                    onPressedbtn: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => AddressLocationScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
