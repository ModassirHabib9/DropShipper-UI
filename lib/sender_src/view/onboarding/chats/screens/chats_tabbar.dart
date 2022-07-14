import 'package:dropshpper_app/sender_src/view/onboarding/driver_info/custom_tabbar/widgets/custom_tabbar.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/driver_info/custom_tabbar/tabs/posted_tab.dart';
import 'package:flutter/material.dart';

import '../../driver_info/custom_tabbar/tabs/underWay_tab.dart';
import '../widgets/chats_appbar.dart';
import 'Parcel_details.dart';
import 'chat_room.dart';

class Chats_PostalTabbar extends StatefulWidget {
  @override
  _Chats_PostalTabbarState createState() => _Chats_PostalTabbarState();
}

class _Chats_PostalTabbarState extends State<Chats_PostalTabbar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Container(child: Chats_Tabbar()),
            Expanded(
                child: TabBarView(
              children: [
                ChatRoom(),
                ParcelDetailsScreen(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
