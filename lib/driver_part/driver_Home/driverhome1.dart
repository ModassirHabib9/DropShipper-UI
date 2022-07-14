import 'package:dropshpper_app/driver_part/driver_Home_2/driver_Home_2.dart';
import 'package:dropshpper_app/driver_part/driver_Home_2/driver_home2_Design.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:dropshpper_app/driver_part/utils/textStrings.dart';
import 'package:dropshpper_app/driver_part/utils/universalRowDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DriverHome1 extends StatefulWidget {
  const DriverHome1({Key? key}) : super(key: key);

  @override
  State<DriverHome1> createState() => _DriverHome1State();
}

class _DriverHome1State extends State<DriverHome1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ImageManager.men1,
                    width: 44.w,
                    height: 44.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        driver_Home_2(),
                      );
                    },
                    child: Image.asset(
                      'assets/dropshippers.png',
                      width: 133.w,
                      height: 26.h,
                    ),
                  ),
                  Image.asset(
                    ImageManager.bell,
                    width: 20.w,
                    height: 20.h,
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Search (city, state, destination)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: CircleAvatar(
                          radius: 10.r,
                          backgroundColor: Color(0xffFFDC8A),
                          child: Icon(Icons.search)),
                    )),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text('Posted Packages nearby'),
              SizedBox(
                height: 10.h,
              ),
              Container(
                // width: 305.w,
                height: 180.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Union_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 8.w),
                  child: Column(
                    children: [
                      rowDesign(
                        text1: 'Sender',
                        text2: 'John Dow',
                        text3: 'Receiver',
                        text4: 'Alan Smith',
                        image1: ImageManager.user_2,
                        image2: ImageManager.delivery,
                      ),
                      SizedBox(
                        height: 8.5.h,
                      ),
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
                      Fixsize(h: 7.h),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Color(0xffFFDC8A),
                      ),
                    ],
                  ),
                ),
              ),
              // *********************
              Container(
                // width: 305.w,
                height: 310.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Union2_bg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 12.w, right: 8.w),
                  child: Column(children: [
                    rowDesign(
                      text1: 'Sender',
                      text2: 'Emma Julia',
                      text3: 'Receiver',
                      text4: 'Oliva Ann',
                      image1: ImageManager.user_2,
                      image2: ImageManager.delivery,
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
                    Fixsize(h: 8.h),
                    divider(),
                    Fixsize(h: 8.h),

                    //  ******************************************************
                    messageDsn(),
                    Fixsize(h: 4.h),
                    Icon(
                      Icons.keyboard_arrow_up_outlined,
                      size: 28.r,
                      color: Color(0xffFFDC8A),
                    ),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowDesign({
    String? text1,
    String? text2,
    String? text3,
    String? text4,
    String? image1,
    String? image2,
  }) {
    return Padding(
      padding: EdgeInsets.only(top: 8.h, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  image1!,
                  width: 26.w,
                  height: 26.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text1!,
                        style: TextStyle(
                            fontSize: 8.sp, color: ColorsManager.icontxt)),
                    Text(text2!,
                        style: TextStyle(fontSize: 12.sp, color: Colors.black)),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Image.asset(
                  image2!,
                  width: 26.w,
                  height: 26.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text3!,
                        style: TextStyle(
                            fontSize: 8.sp, color: ColorsManager.icontxt)),
                    Text(text4!,
                        style: TextStyle(fontSize: 12.sp, color: Colors.black)),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
