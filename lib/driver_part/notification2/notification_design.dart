import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationDesign extends StatelessWidget {
  NotificationDesign({Key? key, this.images, this.title, this.subtitle})
      : super(key: key);
  String? images;
  String? title;
  String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      decoration: BoxDecoration(
          color: ColorsManager.lightWhite,
          borderRadius: BorderRadius.circular(50.r)),
      child: Row(
        children: [
          SizedBox(
            width: 12.w,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(
              images!,
              width: 18.w,
              height: 18.h,
            ),
          ),
          SizedBox(
            width: 8.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                title!,
                style: TextStyle(fontSize: 13.sp),
              ),
              Text(
                subtitle!,
                style: TextStyle(fontSize: 13.sp),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
