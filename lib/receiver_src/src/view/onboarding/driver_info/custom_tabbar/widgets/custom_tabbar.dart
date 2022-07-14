import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/utils/images_receiver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabbarReceiver extends StatefulWidget {
  const CustomTabbarReceiver({Key? key}) : super(key: key);

  @override
  State<CustomTabbarReceiver> createState() => _CustomTabbarReceiverState();
}

class _CustomTabbarReceiverState extends State<CustomTabbarReceiver> {
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
                    child: Image.asset(
                  Images.appbar_dropshoper,
                  height: 30.h,
                  width: 130.w,
                )),
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
