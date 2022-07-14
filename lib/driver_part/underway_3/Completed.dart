import 'dart:async';

import 'package:dropshpper_app/driver_part/driver_Home_2/driver_home2_Design.dart';
import 'package:dropshpper_app/driver_part/utils/Universalflatbtn.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:dropshpper_app/driver_part/utils/universalRowDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Completed extends StatefulWidget {
  const Completed({Key? key}) : super(key: key);

  @override
  State<Completed> createState() => _CompletedState();
}

class _CompletedState extends State<Completed> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              DriverHomeDesign2(
                text1: 'Sender',
                text2: 'John Doe',
                image1: ImageManager.user_2,
                image2: ImageManager.img1,
              ),
              Fixsize(h: 12.h),
              divider(),
              Fixsize(h: 12.h),
              DriverHomeDesign2(
                text1: 'Receiver',
                text2: 'Alan Smith',
                image1: ImageManager.delivery,
                image2: ImageManager.img2,
              ),
              Fixsize(h: 12.h),
              divider(),
              Fixsize(h: 12.h),
              DriverHomeDesign2(
                text1: 'Pickup Location',
                text2: 'Broad way road, NY',
                image1: ImageManager.map1,
              ),
              Fixsize(h: 15.h),
              DriverHomeDesign2(
                text1: 'Destination Location',
                text2: 'William ST, NY',
                image1: ImageManager.map2,
              ),
              Fixsize(h: 12.h),
              divider(),
              Fixsize(h: 9.h),
              universalRowDesign(
                image1: ImageManager.box,
                text1: 'Package Size',
                text2: 'Medium size',
                imageuniv: ImageManager.price,
                textuniv1: 'Offer',
                textuniv2: '\$70',
              ),
              Fixsize(h: 12.h),
              divider(),
              Fixsize(h: 12.h),
              Row(
                children: [
                  Image.asset(
                    'assets/chat1.png',
                    width: 35.w,
                    height: 35.h,
                  ),
                  SizedBox(
                    width: 38.w,
                  ),
                  UniversalFlatButton(
                    color1: Color(0xff00A8C2),
                    color2: Colors.white,
                    color3: Colors.white,
                    // color1: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
