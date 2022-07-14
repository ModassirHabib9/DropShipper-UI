import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
