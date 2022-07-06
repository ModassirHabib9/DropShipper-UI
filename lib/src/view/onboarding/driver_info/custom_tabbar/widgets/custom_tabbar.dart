import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:dropshpper_app/src/utils/images.dart';
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
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14.r),
              bottomRight: Radius.circular(14.r))),
      child: Column(
        children: [
          SizedBox(height: 30.h),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: CircleAvatar(
                    child: Image.asset(Images.profile_1),
                  ),
                ),
                Container(
                  child: Text(
                    "DropShipper",
                    style: TextStyle(color: colorBlack, fontSize: 16),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  mini: true,
                  backgroundColor: appMainColor,
                  child: Icon(Icons.search),
                )
              ],
            ),
          ),
          const ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(14.0),
              bottomRight: Radius.circular(14.0),
            ),
            child: TabBar(
                labelColor: colorBlack,
                indicatorWeight: 6.0,
                indicatorColor: appMainColor,
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
