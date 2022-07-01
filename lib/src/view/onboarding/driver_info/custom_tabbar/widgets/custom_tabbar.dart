import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabbar extends StatefulWidget {
  const CustomTabbar({Key? key}) : super(key: key);

  @override
  State<CustomTabbar> createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 140,
      // padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.r),
              bottomRight: Radius.circular(30.r))),
      child: Column(
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: CircleAvatar(
                    child: Image.asset('assets/images/profile_pic.png'),
                  ),
                ),
                Container(
                  child: Text(
                    "DropShipper",
                    style:
                        TextStyle(color: ColorResources.kwhite, fontSize: 16),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange.shade200),
                  width: 40.w,
                  height: 40.h,
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
          const ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            child: TabBar(
                // indicator: BoxDecoration(
                //   border: Border(
                //       bottom: BorderSide(color: Colors.blue, width: 0.8)),
                // ),
                indicatorWeight: 6.0,
                tabs: [
                  Tab(
                    text: "POSTED",
                  ),
                  Tab(
                    text: "UNDERWAY",
                  ),
                  Tab(
                    text: "COMPLETED",
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
