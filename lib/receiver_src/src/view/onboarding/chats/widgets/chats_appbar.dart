import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../widgets/appbar_back_btn.dart';

class Chats_Tabbar extends StatefulWidget {
  const Chats_Tabbar({Key? key}) : super(key: key);

  @override
  State<Chats_Tabbar> createState() => _Chats_TabbarState();
}

class _Chats_TabbarState extends State<Chats_Tabbar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // height: 140,
      elevation: 5,
      // padding: EdgeInsets.only(left: 10, right: 10),
      shape: RoundedRectangleBorder(
          // color: Colors.red,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r))),
      child: Column(
        children: [
          // SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppBar(
                elevation: 0,
                centerTitle: true,
                backgroundColor: colorTransprent,
                title: Text(
                  'Chats Group',
                  style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: colorBlack),
                ),
                // leadingWidth: 35,
                leading: AppbarBackButton()),
          ),

          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15.0.r),
              bottomRight: Radius.circular(30.0.r),
            ),
            child: const TabBar(
                // indicator: BoxDecoration(
                //   border: Border(
                //       bottom: BorderSide(color: Colors.blue, width: 0.8)),
                // ),
                labelColor: colorBlack,
                indicatorWeight: 6.0,
                tabs: [
                  Tab(
                    text: "CHAT",
                  ),
                  Tab(
                    text: "Parcel Details",
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
