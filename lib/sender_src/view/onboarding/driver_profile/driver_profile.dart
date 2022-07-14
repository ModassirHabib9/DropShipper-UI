import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/sender_src/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../receiver_src/src/view/onboarding/chats/app_theme.dart';
import '../../../../sender_src/view/onboarding/payment_posting/widgets/custom_appbar.dart';
import '../../../../sender_src/view/onboarding/profile/profile.dart';

class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 25),
            Container(
              height: 220.h,
              // width: MediaQuery.of(context).size.width * 0.99,
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
                          padding: const EdgeInsets.only(left: 3.0, bottom: 5),
                          child:
                              Icon(Icons.arrow_back_ios, color: appMainColor),
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

                          /*Positioned(
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
                              )),*/
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Center(
                child: Text(
              "William Smith",
              style: TextStyle(fontSize: 20),
            )),
            Padding(
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
                    title: Text("Mobile", style: TextStyle(fontSize: 10)),
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
                    title: Text("Location", style: TextStyle(fontSize: 10)),
                    subtitle: Text("Board way road 90003,NY USA",
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
                          style: TextStyle(fontSize: 16, color: colorBlack),
                          children: <TextSpan>[
                            TextSpan(
                                text: '(28',
                                style: new TextStyle(color: colorGray)),
                            TextSpan(
                                text: '   Reviews)',
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
                  Divider()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
