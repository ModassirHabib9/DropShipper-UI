import 'dart:async';

import 'package:dropshpper_app/driver_part/chatgrounp_3_4/chat.dart';
import 'package:dropshpper_app/driver_part/chatgrounp_3_4/chatgroup_tabDesign.dart';
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

class Underway extends StatefulWidget {
  const Underway({Key? key}) : super(key: key);

  @override
  State<Underway> createState() => _UnderwayState();
}

class _UnderwayState extends State<Underway> {
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ChatGroupTabDesign();
                      }));
                    },
                    child: Image.asset(
                      'assets/chat1.png',
                      width: 35.w,
                      height: 35.h,
                    ),
                  ),
                  SizedBox(
                    width: 38.w,
                  ),
                  UniversalFlatButton(
                    color1: Colors.white,
                    color3: Color(0xff00AAC4),
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
