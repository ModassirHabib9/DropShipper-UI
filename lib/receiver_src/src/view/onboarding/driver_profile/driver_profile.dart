import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/utils/images_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/view/onboarding/notification/notiofication_page.dart';
import 'package:dropshpper_app/receiver_src/src/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../payment_posting/widgets/custom_appbar.dart';
import '../profile/profile.dart';

class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: MyCustomButton(
        text: "REQUEST FOR DELIVERY",
        colorss: appMainColor,
        mergin: EdgeInsets.only(bottom: 6, left: 8.0, right: 8.0),
        onPressedbtn: () {
          Get.to(NotificationScreen());
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 25),
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
            SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    leading: Image.asset(
                      Images.phone,
                      height: 30.h,
                      width: 30.w,
                    ),
                    title: Text("Mobile", style: TextStyle(fontSize: 10.sp)),
                    subtitle: Text("+1-0989828892-2",
                        style: TextStyle(color: colorBlack)),
                    trailing: FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        Get.to(ProfileScreen());
                      },
                      child: Icon(Icons.call),
                    ),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset(
                      Images.address_2,
                      height: 30.h,
                      width: 30.w,
                    ),
                    title: Text("Location", style: TextStyle(fontSize: 10.sp)),
                    subtitle: Text("Board way road 90003,NY USA",
                        style: TextStyle(color: colorBlack)),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset(
                      Images.driving_for,
                      height: 35.h,
                      width: 35.w,
                    ),
                    title: Text(
                      'Driving for ',
                      style: TextStyle(fontSize: 12, color: colorSplash),
                    ),
                    subtitle:
                        Text('51 Miles', style: TextStyle(color: colorBlack)),
                  ),
                  ListTile(
                    dense: true,
                    leading: Image.asset(
                      Images.driving_car,
                      height: 35.h,
                      width: 35.w,
                    ),
                    title: Text(
                      'Vehicle',
                      style: TextStyle(fontSize: 12.sp, color: colorSplash),
                    ),
                    subtitle: Text('Kia Picanto,2020 ',
                        style: TextStyle(color: colorBlack)),
                  ),
                  Divider(),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: new TextSpan(
                          text: 'Rating ',
                          style: TextStyle(fontSize: 16.sp, color: colorBlack),
                          children: <TextSpan>[
                            TextSpan(
                                text: '(28',
                                style: new TextStyle(color: colorGray)),
                            TextSpan(
                                text: '  \(Reviews\)',
                                style: new TextStyle(color: colorGray)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: appMainColor),
                          Text("4.9"),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          // text: 'Rating ',
                          // style: TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'By John Deo,   ',
                                style: new TextStyle(color: colorGray)),
                            TextSpan(
                                text: 'May 27,2022',
                                style: new TextStyle(color: colorGray)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                        ],
                      ),
                    ],
                  ),
                  Text(
                      "Fusce efficitur condimentum lacus, at mollis metus tempus et. Maecenas porta aliquam nunc"),
                  Divider(),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                          // text: 'Rating ',
                          // style: TextStyle(fontSize: 16, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'By John Deo,   ',
                                style: new TextStyle(color: colorGray)),
                            TextSpan(
                                text: 'May 27,2022',
                                style: new TextStyle(color: colorGray)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                          Icon(Icons.star, color: appMainColor),
                        ],
                      ),
                    ],
                  ),
                  Text(
                      "Fusce efficitur condimentum lacus, at mollis metus tempus et. Maecenas porta aliquam nunc"),
                  Divider()
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
