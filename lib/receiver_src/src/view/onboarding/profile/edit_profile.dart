import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/view/onboarding/profile/widgets/driver.dart';
import 'package:dropshpper_app/receiver_src/src/widgets/my_button.dart';
import 'package:dropshpper_app/receiver_src/src/widgets/my_custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/images_receiver.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 220.h,
              child: Stack(
                children: [
                  Image.asset(
                    Images.profile_appbar_back,
                    // fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 5.h,
                    width: 10.w,
                  ),
                  // arrowBack(),

                  Card(
                    elevation: 10,
                    margin: EdgeInsets.only(left: 10, top: 35),
                    child: Container(
                      width: 35.w,
                      height: 35.h,
                      child: IconButton(
                        color: colorBlack,
                        icon: Center(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 3.0, bottom: 3),
                          child: Icon(Icons.arrow_back_ios),
                        )),
                        onPressed: () {
                          Get.back();
                          // Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    // top: 96.h,
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 60.r,
                            child: Image.asset(
                              Images.profile_2,
                              // fit: BoxFit.cover,
                            ),
                          ),
                          // arrowBack(),

                          Positioned(
                              top: 70.h,
                              // left: 0,
                              right: 0.w,
                              // bottom: 0,
                              child: CircleAvatar(
                                backgroundColor: colorWhite,
                                radius: 20.w,
                                child: Icon(
                                  Icons.camera_alt,
                                  color: colorBlack,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0.w),
              child: Column(
                children: [
                  MyCustomTextField(
                      maxLines: 1,
                      hint: "John",
                      prefixIcon: Icon(Icons.person)),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyCustomTextField(
                      maxLines: 1, hint: "Doe", prefixIcon: Icon(Icons.person)),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyCustomTextField(
                      maxLines: 1,
                      hint: "johndoe22@email.com",
                      prefixIcon: Icon(Icons.email)),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyCustomTextField(
                      maxLines: 1,
                      hint: "+1-098765-89",
                      prefixIcon: Icon(Icons.phone_android)),
                  SizedBox(
                    height: 20.h,
                  ),
                  MyCustomButton(
                    text: "UPDATE INFO",
                    colorss: appMainColor,
                    mergin: EdgeInsets.zero,
                    onPressedbtn: () {
                      // Get.to();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
