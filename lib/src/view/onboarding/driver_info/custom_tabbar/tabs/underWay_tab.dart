import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:dropshpper_app/src/utils/images.dart';
import 'package:dropshpper_app/src/view/onboarding/chats/chats_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../widgets/my_button.dart';
import '../../../chats/screens/chat_room.dart';
import '../../../chats/screens/chats_tabbar.dart';
import '../../../started/widgets/custum_card.dart';

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
              MyCustomCard(
                title: "Post New delivery",
                subtitle:
                    "Lorem ipsum dolor sit amet, consectetur adipis cing elit.",
                image: Image.asset(Images.tab_1),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
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
                                      style: TextStyle(fontSize: 10)),
                                  Text("William ST, NY"),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
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
                                  style: TextStyle(fontSize: 10)),
                              Text("Alan Smith"),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: colorSplash),
                      MyCustomTabbarButton3(
                        text: "Open Chat",
                        width: 250.w,
                        icon: Icon(Icons.chat),
                        colorss: appMainColor,
                        mergin: EdgeInsets.all(0),
                        onPressedbtn: () {
                          Get.to(Chats_PostalTabbar());
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
