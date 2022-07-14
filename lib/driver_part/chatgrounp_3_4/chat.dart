import 'dart:async';

import 'package:dropshpper_app/driver_part/chatgrounp_3_4/parceldetail.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              rowDesign(ImageManager.img1, 'John Doe',
                  'Lorem ipsum dolor sit amet, consec..'),
              Fixsize(h: 12.h),
              rowDesign(ImageManager.img2, 'Alan Smith',
                  'Lorem ipsum dolor sit amet, consec. \nFusce efficitur condimentum lacus, at'),
              Fixsize(h: 12.h),
              rowDesign(ImageManager.img1, 'John Doe',
                  'Lorem ipsum dolor sit amet, consec..'),
              Fixsize(h: 12.h),
              rowDesign(ImageManager.img2, 'Alan Smith',
                  'Lorem ipsum dolor sit amet, consec. \nFusce efficitur condimentum lacus, at'),
              Fixsize(h: 12.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: 145.w,
                    height: 31.h,
                    decoration: BoxDecoration(
                      color: ColorsManager.yellow,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0.r),
                          topRight: Radius.circular(30.0.r),
                          bottomLeft: Radius.circular(30.0.r)),
                    ),
                    child: Center(child: Text('Lorem ipsum dolor sit')),
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Image.asset(
                    ImageManager.men1,
                    width: 34.w,
                    height: 34.h,
                  ),
                ],
              ),
              Spacer(),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Type your message',
                  fillColor: Color(0xffFFDC8A),
                  filled: true,
                  suffixIcon: Container(
                    width: 34.w,
                    height: 34.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    margin: EdgeInsets.all(10.w),
                    child: Image.asset(
                      ImageManager.send_msg,
                      width: 27.w,
                      height: 26.h,
                    ),
                  ),
                  hintStyle: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0.r),
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 5.h,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget rowDesign(String? image1, String? text1, String? text2) {
    return Row(
      children: [
        Image.asset(
          image1!,
          width: 34.w,
          height: 34.h,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 9.h, left: 5.w),
              child: Text(
                text1!,
                style: TextStyle(fontSize: 12.sp),
              ),
            ),
            Container(
                height: 45.h,
                width: 215.w,
                decoration: BoxDecoration(
                  color: ColorsManager.lightWhite,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0.r),
                      topRight: Radius.circular(30.0.r),
                      bottomRight: Radius.circular(30.0.r)),
                ),
                margin: EdgeInsets.only(
                  bottom: 5.h,
                  left: 5.w,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 9.h, left: 5.w),
                  child: Text(
                    text2!,
                    style: TextStyle(fontSize: 11.sp),
                  ),
                )),
          ],
        )
      ],
    );
  }
}
