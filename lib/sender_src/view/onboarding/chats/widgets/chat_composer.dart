import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/sender_src/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container buildChatComposer() {
  return Container(
    padding: EdgeInsets.only(right: 12, left: 12, top: 5, bottom: 10),
    color: colorWhite,
    // height: 80,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            height: 45.h,
            decoration: BoxDecoration(
              color: appMainColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your message ...',
                      hintStyle: TextStyle(color: colorSplash),
                    ),
                  ),
                ),
                Container(
                  width: 50.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(Images.chat_last_icon,
                        height: 20.h, width: 20.w),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
