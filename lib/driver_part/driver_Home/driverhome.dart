import 'package:dropshpper_app/driver_part/driver_Home/driverhome1.dart';
import 'package:dropshpper_app/driver_part/driver_Home_2/driver_Home_2.dart';
import 'package:dropshpper_app/driver_part/driver_Home_2/driver_home2_Design.dart';
import 'package:dropshpper_app/driver_part/editProfile_1/editProfile_1.dart';
import 'package:dropshpper_app/driver_part/paymentPosting1/paymentPosting1.dart';
import 'package:dropshpper_app/driver_part/underway_3/Underway_3.dart';
import 'package:dropshpper_app/driver_part/underway_3/underway.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DriverHome extends StatefulWidget {
  const DriverHome({Key? key}) : super(key: key);

  @override
  State<DriverHome> createState() => _DriverHomeState();
}

class _DriverHomeState extends State<DriverHome> {
  // var pagesDat=[DriverHome(),underway_3_tabDesign()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // screens[_selectedIndex],
                    InkWell(
                      onTap: () {
                        Get.to(EditProfile1());
                      },
                      child: Image.asset(
                        ImageManager.men1,
                        width: 42.w,
                        height: 42.h,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.to(DriverHome1());
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
                  height: 5.h,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Search (city, state, destination)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      suffixIcon: Container(
                        margin: EdgeInsets.all(6),
                        child: CircleAvatar(
                            backgroundColor: Color(0xffFFDC8A),
                            child: Icon(Icons.search)),
                      )),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text('Posted Packages nearby'),
                SizedBox(
                  height: 8.h,
                ),
                // *************8
                InkWell(
                  onTap: () {
                    Get.to(driver_Home_2());
                  },
                  child: Container(
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
                          InkWell(
                            onTap: () {
                              Get.to(DriverHome1());
                            },
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xffFFDC8A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // *********************
                SizedBox(
                  height: 6.h,
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
                    child: Column(children: [
                      rowDesign(
                        text1: 'Sender',
                        text2: 'Emma Julia',
                        text3: 'Receiver',
                        text4: 'Oliva Ann',
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
                      InkWell(
                        onTap: () {
                          Get.to(DriverHome1());
                        },
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xffFFDC8A),
                        ),
                      ),
                    ]),
                  ),
                ),
                // *****************
                SizedBox(
                  height: 6.h,
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
                        InkWell(
                          onTap: () {
                            Get.to(DriverHome1());
                          },
                          child: Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xffFFDC8A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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
                          fontSize: 8.sp,
                          color: ColorsManager.icontxt,
                        )),
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
