import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/utils/images_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/view/onboarding/chats/chats_page.dart';
import 'package:dropshpper_app/receiver_src/src/widgets/my_custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../../sender_src/view/onboarding/driver_info/custom_tabbar/widgets/new.dart';
import '../../../../../widgets/my_button.dart';
import '../../../chats/screens/chat_room.dart';
import '../../../chats/screens/chats_tabbar.dart';
import '../../../notification/notiofication_page.dart';

class UnderWayTabScreen extends StatefulWidget {
  const UnderWayTabScreen({Key? key}) : super(key: key);

  @override
  State<UnderWayTabScreen> createState() => _UnderWayTabScreenState();
}

class _UnderWayTabScreenState extends State<UnderWayTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(Images.tab_1, width: 40.w, height: 40.h),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Receiver",
                                  style: TextStyle(fontSize: 10.sp)),
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
                                      style: TextStyle(fontSize: 10.sp)),
                                  Text("William ST, NY"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
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
                                  style: TextStyle(fontSize: 10.sp)),
                              Text("Alan Smith"),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: colorSplash),
                      Row(
                        children: [
                          Expanded(
                            child: FloatingActionButton(
                              onPressed: () {
                                Get.to(Chats_PostalTabbar());
                              },
                              child: CircleAvatar(
                                radius: 25.r,
                                backgroundColor: colorWhite,
                                child: Image.asset(
                                  Images.message,
                                  width: 25.w,
                                  height: 25.h,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 30.w),
                          Expanded(
                            flex: 6,
                            child: MyCustomTabbarButton3(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                  color: colorBlue,
                                  width: 1,
                                ),
                              ),
                              text: "Accept Delivery",
                              width: 250.w,
                              text_color: colorBlue,
                              icon_child: Container(
                                height: 35.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: colorBlue),
                                ),
                                child: Icon(Icons.done),
                              ),
                              colorss: colorWhite,
                              mergin: EdgeInsets.all(0),
                              onPressedbtn: () {
                                _settingModalBottomSheet(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              /// Card 2/////
              SizedBox(height: 20.h),
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(Images.tab_1, width: 40.w, height: 40.h),
                          SizedBox(width: 10.w),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Receiver",
                                  style: TextStyle(fontSize: 10.sp)),
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
                                      style: TextStyle(fontSize: 10.sp)),
                                  Text("William ST, NY"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20.r,
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
                                  style: TextStyle(fontSize: 10.sp)),
                              Text("Alan Smith"),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: colorSplash),
                      Row(
                        children: [
                          Expanded(
                            child: FloatingActionButton(
                              onPressed: () {
                                Get.to(Chats_PostalTabbar());
                              },
                              child: CircleAvatar(
                                radius: 25.r,
                                backgroundColor: colorWhite,
                                child: Image.asset(
                                  Images.message,
                                  width: 25.w,
                                  height: 25.h,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 30.w),
                          Expanded(
                            flex: 6,
                            child: MyCustomTabbarButton3(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.r),
                                border: Border.all(
                                  color: colorBlue,
                                  width: 1,
                                ),
                              ),
                              text: "Accept Delivery",
                              width: 250.w,
                              text_color: colorBlue,
                              icon_child: Container(
                                height: 35.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: colorBlue),
                                ),
                                child: Icon(Icons.done),
                              ),
                              /*FloatingActionButton(
                                  // backgroundColor: colorWhite,
                                  */ /*shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          color: colorBlue, width: 2),
                                      borderRadius: BorderRadius.circular(20)),*/ /*
                                  onPressed: () {},
                                  child: Icon(Icons.done)),*/
                              colorss: colorWhite,
                              mergin: EdgeInsets.all(0),
                              onPressedbtn: () {
                                _settingModalBottomSheet(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// bottom sheet
void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r), topLeft: Radius.circular(20.r))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: 350.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                Images.message_success,
                height: 150.h,
                width: 150.w,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Are your sure to accept this delivery',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20.h),
              MyCustomTabbarButton3(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(
                    color: colorBlue,
                  ),
                ),
                text: "Completed",
                width: double.infinity,
                text_color: colorWhite,
                icon_child: Container(
                  height: 35.h,
                  width: 35.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: colorWhite),
                  ),
                  child: Icon(Icons.done),
                ),
                colorss: colorBlue,
                mergin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                onPressedbtn: () {
                  _settingModalBottomSheet2(context);
                },
              ),
              SizedBox(height: 20.h),
              InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Text("CANCEL"))
            ],
          ),
        );
      });
}

/// bottom sheet 2
void _settingModalBottomSheet2(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r), topLeft: Radius.circular(20.r))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                Images.order_deliver,
                height: 100.h,
                width: 100.w,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'HOW WAS LOAD DELIVERY?',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 10.0, right: 12, left: 12, bottom: 12),
                child: Text(
                  'Fusce efficitur condimentum lacus, at mollis metus tempus et. Maecenas porta aliquam nunc',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.star, size: 40, color: colorGray),
                  Icon(Icons.star, size: 40, color: colorGray),
                  Icon(Icons.star, size: 40, color: colorGray),
                  Icon(Icons.star, size: 40, color: colorGray),
                  Icon(Icons.star, size: 40, color: colorGray),
                ],
              ),
              SizedBox(height: 10.h),
              MyCustomTextField(
                hint: "Additional Feedback",
                maxLines: 3,
                width: double.infinity,
              ),
              SizedBox(height: 12.h),
              MyCustomButton(
                text: "SUBMIT RATING",
                onPressedbtn: () {
                  Get.to(Chats_PostalTabbar());
                },
                mergin: EdgeInsets.all(2),
                // child: Text("name"),
              ),
              SizedBox(height: 10.h),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Text("ASK ME LATER")))
            ],
          ),
        );
      });
}
