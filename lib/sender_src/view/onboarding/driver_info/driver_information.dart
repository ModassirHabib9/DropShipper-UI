import 'package:dropshpper_app/sender_src/view/onboarding/driver_info/custom_tabbar/widgets/custom_tabbar.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/driver_info/custom_tabbar/tabs/posted_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../receiver_src/src/utils/images_receiver.dart';
import '../../../../receiver_src/src/view/onboarding/driver_info/driver_information.dart';
import '../../../../receiver_src/src/view/onboarding/profile/edit_profile.dart';
import '../../../utils/colors_resource.dart';
import 'custom_tabbar/tabs/completed_tab.dart';
import 'custom_tabbar/tabs/underWay_tab.dart';

class Sender_Home_Screen extends StatefulWidget {
  @override
  _Sender_Home_ScreenState createState() => _Sender_Home_ScreenState();
}

class _Sender_Home_ScreenState extends State<Sender_Home_Screen> {
  int value = 0;
  int _selectedTabIndex = 0;
  /*_changeIndex(int index) {
    setState(() {
      this.value = index;
      _selectedTabIndex = index;
      print("index..." + index.toString());
    });
    print(_selectedTabIndex);
    print(value);
  }*/

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedTabIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: appMainColor,
            onTap: (value) {
              if (value == 0) {
                Get.to(Reciver_HomeTabScreen());
              } else if (value == 1) {
                // Get.to(Text(""));
              } else {
                Get.to(EditProfileScreen());
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  value == 0 ? Images.bottom_color_1 : Images.bottom_No_1,
                  // Images.bottom_1,
                  height: 20.h,
                  width: 20.h,
                ),
                label: 'RECEIVING',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  value == 1 ? Images.bottom_Color_2 : Images.bottom_No_2,
                  height: 20.h,
                  width: 20.h,
                ),
                label: 'SENDING',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  value == 2 ? Images.bottom_Color_3 : Images.bottom_No_3,
                  height: 20.h,
                  width: 20.h,
                ),
                label: 'PROFILE',
              ),
            ]),
        body: Column(
          children: [
            Container(child: CustomTabbar()),
            SizedBox(height: 20),
            const Expanded(
                child: TabBarView(
              children: [
                PostedTabScreen(),
                UnderWayTabScreen(),
                CompletedTabScreen(),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
