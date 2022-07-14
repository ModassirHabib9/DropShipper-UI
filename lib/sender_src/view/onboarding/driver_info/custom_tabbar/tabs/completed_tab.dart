import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../sender_src/utils/images.dart';
import '../../../../../../sender_src/widgets/my_button.dart';
import '../../../../../utils/font_size.dart';
import '../../../delivery_parcel_details/delivery_parcal_details.dart';
import '../../../started/widgets/custum_card.dart';

class CompletedTabScreen extends StatefulWidget {
  const CompletedTabScreen({Key? key}) : super(key: key);

  @override
  State<CompletedTabScreen> createState() => _CompletedTabScreenState();
}

class _CompletedTabScreenState extends State<CompletedTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 5, left: 8, right: 8),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(Images.tab_3, width: 40.w, height: 40.h),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Receiver", style: MyFontTheme.font_header),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(color: colorSplash),
                    Row(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundColor: appMainColor,
                              child: Image.asset(Images.tab_2,
                                  width: 30.w, height: 30.h),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Destination Location",
                                    style: MyFontTheme.font_header),
                                Text("William ST, NY"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    // Stepper(steps: , currentStep: 0),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: appMainColor,
                          child: Image.asset(Images.tab_3,
                              width: 30.w, height: 30.h),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pickup Location",
                                style: MyFontTheme.font_header),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(color: colorSplash),
                    MyCustomTabbarButton3(
                      text: "Completed",
                      width: 250.w,
                      icon_child: Container(
                          // width: 25.w,
                          // height: 35.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: colorWhite,
                              width: 1,
                            ),
                            // color: Colors.white,
                          ),
                          child: Icon(Icons.check, color: colorWhite)),
                      // icon: Icon(Icons.check),
                      colorss: Colors.lightBlue,
                      mergin: EdgeInsets.all(4),
                      onPressedbtn: () {
                        Get.to(DeliveryParcalDetailsScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(Images.tab_3, width: 40, height: 40),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Receiver", style: MyFontTheme.font_header),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(color: colorSplash),
                    Row(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: appMainColor,
                              child: Image.asset(Images.tab_2,
                                  width: 30, height: 30),
                            ),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Destination Location",
                                    style: MyFontTheme.font_header),
                                Text("William ST, NY"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    // Stepper(steps: , currentStep: 0),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: appMainColor,
                          child:
                              Image.asset(Images.tab_3, width: 30, height: 30),
                        ),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pickup Location",
                                style: MyFontTheme.font_header),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(color: colorSplash),
                    MyCustomTabbarButton3(
                      text: "Completed",
                      width: 250.w,
                      icon_child: Container(
                          // width: 25.w,
                          // height: 35.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: colorWhite,
                              width: 1,
                            ),
                            // color: Colors.white,
                          ),
                          child: Icon(Icons.check, color: colorWhite)),
                      // icon: Icon(Icons.check),
                      colorss: Colors.lightBlue,
                      mergin: EdgeInsets.all(4),
                      onPressedbtn: () {
                        Get.to(DeliveryParcalDetailsScreen());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
