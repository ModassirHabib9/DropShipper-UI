import 'package:dropshpper_app/src/view/onboarding/driver_info/custom_tabbar/widgets/custom_tabbar.dart';
import 'package:dropshpper_app/src/view/onboarding/driver_info/custom_tabbar/tabs/posted_tab.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors_resource.dart';
import 'custom_tabbar/tabs/completed_tab.dart';
import 'custom_tabbar/tabs/underWay_tab.dart';

class Home_Screen_Siven7 extends StatefulWidget {
  @override
  _Home_Screen_Siven7State createState() => _Home_Screen_Siven7State();
}

class _Home_Screen_Siven7State extends State<Home_Screen_Siven7> {
  static List<Widget> screens = [
    PostedTabScreen(),
    UnderWayTabScreen(),
    CompletedTabScreen()
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            fixedColor: appMainColor,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'HOME',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.location_on_outlined),
                label: 'DELIVERY',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.verified_user_sharp),
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
