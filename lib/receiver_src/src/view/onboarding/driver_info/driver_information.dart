import 'package:dropshpper_app/receiver_src/src/utils/images_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/view/onboarding/driver_profile/driver_profile.dart';
// import 'package:dropshpper_app/src/view/onboarding/driver_info/custom_tabbar/widgets/custom_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../sender_src/view/onboarding/driver_info/driver_information.dart';
import '../../../../../sender_src/view/onboarding/profile/edit_profile.dart';
import '../../../utils/colors_resource_receiver.dart';
import 'custom_tabbar/tabs/completed_tab.dart';
import 'custom_tabbar/tabs/underWay_tab.dart';
import 'custom_tabbar/widgets/custom_tabbar.dart';

class Reciver_HomeTabScreen extends StatefulWidget {
  @override
  _Reciver_HomeTabScreenState createState() => _Reciver_HomeTabScreenState();
}

class _Reciver_HomeTabScreenState extends State<Reciver_HomeTabScreen> {
  int _selectedTabIndex = 0;

  int value = 0;

  _changeIndex(int index) {
    setState(() {
      this.value = index;
      _selectedTabIndex = index;
      print("index..." + index.toString());
    });
    print(_selectedTabIndex);
    print(value);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedTabIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: appMainColor,
            onTap: (value) {
              if (value == 0) {
                // Get.to(EditProfileScreen());
              } else if (value == 1) {
                Get.to(Sender_Home_Screen());
              } else {
                Get.to(DriverProfileScreen());
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  value == 0 ? Images.bottom_color_1 : Images.bottom_No_1,
                  // Images.bottom_1,
                  height: 20.h,
                  width: 20.w,
                ),
                label: 'RECEIVING',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  value == 1 ? Images.bottom_Color_2 : Images.bottom_No_2,
                  height: 20.h,
                  width: 20.w,
                ),
                label: 'SENDING',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  value == 2 ? Images.bottom_Color_3 : Images.bottom_Color_3,
                  height: 20.h,
                  width: 20.w,
                ),
                label: 'PROFILE',
              ),
            ]),
        body: Column(
          children: [
            Container(child: CustomTabbarReceiver()),
            SizedBox(height: 20.h),
            const Expanded(
                child: TabBarView(
              children: [
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
