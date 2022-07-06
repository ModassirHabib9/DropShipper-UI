import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/images.dart';
import '../driver_profile/driver_profile.dart';
import '../payment_posting/widgets/custom_appbar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: CustomAppbar(
          text: "Notifications",
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Today"),
            ListTile(
              dense: true,
              tileColor: colorGray_onboarding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: CircleAvatar(
                radius: 20.r,
                backgroundColor: colorWhite,
                child: Image.asset(
                  Images.hand_parcel,
                  height: 25.h,
                  width: 25.w,
                ),
              ),
              title: Text("Lorem Ipsum"),
              subtitle: Text("Lorem Ipsum dolor sit amit"),
            ),
            SizedBox(height: 10),
            ListTile(
              dense: true,
              tileColor: colorGray_onboarding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: CircleAvatar(
                radius: 20.r,
                backgroundColor: colorWhite,
                child: Image.asset(
                  Images.tab_3,
                  height: 25.h,
                  width: 25.w,
                ),
              ),
              title: Text("Lorem Ipsum"),
              subtitle: Text("Lorem Ipsum dolor sit amit"),
              onTap: () {
                Get.to(DriverProfileScreen());
              },
            ),
            SizedBox(height: 20.h),
            Text("YesterDay"),
            SizedBox(height: 5.h),
            ListTile(
              dense: true,
              tileColor: colorGray_onboarding,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              leading: CircleAvatar(
                radius: 20.r,
                backgroundColor: colorWhite,
                child: Image.asset(
                  Images.tab_2,
                  height: 25.h,
                  width: 25.w,
                ),
              ),
              title: Text("Lorem Ipsum"),
              subtitle: Text("Lorem Ipsum dolor sit amit"),
            )
          ],
        ),
      ),
    );
  }
}
