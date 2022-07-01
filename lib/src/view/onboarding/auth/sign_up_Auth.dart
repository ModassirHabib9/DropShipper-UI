import 'package:dropshpper_app/src/widgets/my_custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../../../utils/colors_resource.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/my_custom_password.dart';
import '../address/address_information.dart';

class Sign_UpAuthScreen extends StatelessWidget {
  const Sign_UpAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
          width: double.infinity,
          child: Image.asset("assets/images/Repeat Grid 2.png")),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 6,
                  margin: EdgeInsets.only(top: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Get.back();
                      // Navigator.pop(context);
                    },
                  ),
                ),
                // SizedBox(height: 5),
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
                          child: Image.asset("assets/images/profile_pic.png"),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 10,
                          child: Container(
                            alignment: Alignment.bottomRight,
                            decoration: BoxDecoration(
                              color: ColorResources.kwhite,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 20.w,
                            height: 20.h,
                            // color: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.camera_alt,
                                size: 14,
                                color: ColorResources.kblack,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    // CircleAvatar(
                    //   radius: 40,
                    //   // backgroundColor: Colors.black,
                    //   child: Image.asset('assets/images/profile_pic.png'),
                    // ),
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
                hint: "Mobile Number", prefixIcon: Icon(Icons.phone_android)),
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
            MyCustomButton2(
              mergin: EdgeInsets.only(top: 10, bottom: 10),
              colorss: Colors.orange,
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
      ),
    );
  }
}
