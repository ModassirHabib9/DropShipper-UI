import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:dropshpper_app/src/view/onboarding/profile/widgets/driver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/images.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                      width: 35,
                      height: 35,
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
                            radius: 60,
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
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  DriverInfoDesign(
                    image: 'assets/images/Icon awesome-user-edit.png',
                    text1: "Edit Profile",
                    onPressed: () {
                      Get.to(EditProfileScreen());
                    },
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DriverInfoDesign(
                    image: 'assets/images/bell.png',
                    text1: "Notification",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DriverInfoDesign(
                    image: Images.tab_2,
                    text1: "Address Info",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DriverInfoDesign(
                    image: 'assets/images/file-contract-svgrepo-com.png',
                    text1: "Standard Trems of Agreement",
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DriverInfoDesign(
                    image: 'assets/images/share-svgrepo-com.png',
                    text1: "Share Dropship App",
                    onPressed: () {},
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
