import 'package:dropshpper_app/driver_part/bottomNavBar.dart';
import 'package:dropshpper_app/driver_part/driverInfo/driverinfoDesign.dart';
import 'package:dropshpper_app/driver_part/driver_Home/driverhome.dart';
import 'package:dropshpper_app/driver_part/utils/Universalflatbtn.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DriverInfo extends StatefulWidget {
  const DriverInfo({Key? key}) : super(key: key);

  @override
  State<DriverInfo> createState() => _DriverInfoState();
}

class _DriverInfoState extends State<DriverInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(5.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: ColorsManager.yellow,
                  ),
                ),
                Center(
                  child: Text(
                    'Complete your Driver Profile',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 13.sp,
                ),
                // DesignDriver(),
                DriverInfoDesign(
                  image: ImageManager.user,
                  text2: 'James Clark |',
                  text1: 'Full Name',
                ),
                Text(
                  'Enter name as on driving license*',
                  style: TextStyle(fontSize: 10.sp),
                ),
                SizedBox(
                  height: 16.h,
                ),
                DriverInfoDesign(
                  text1: 'Registration Number',
                  image: ImageManager.car,
                  text2: 'Registration Number',
                  width: 18.w,
                  height: 18.w,
                ),
                SizedBox(
                  height: 18.h,
                ),
                DriverInfoDesign(
                  text1: 'Make',
                  image: ImageManager.companey,
                  text2: 'Make',
                  width: 18.w,
                  height: 18.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: DriverInfoDesign(
                        text1: 'Model',
                        image: ImageManager.car_steering,
                        text2: 'Model',
                        width: 18.w,
                        height: 18.w,
                      ),
                    ),
                    SizedBox(
                      width: 26.w,
                    ),
                    Expanded(
                      child: DriverInfoDesign(
                        text1: 'Year',
                        image: ImageManager.calender,
                        text2: 'Year',
                        width: 14.w,
                        height: 16.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 2.h,
                        color: ColorsManager.icontxt,
                        thickness: 1.5,
                      ),
                    ),
                    Text(
                      'Driver License',
                      style: TextStyle(color: ColorsManager.icontxt),
                    ),
                    Expanded(
                      child: Divider(
                        height: 2.h,
                        color: ColorsManager.icontxt,
                        thickness: 1.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        ImageManager.id_card,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Expanded(
                        child: Card(
                      child: Container(
                        height: 94.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                                width: 26.w,
                                height: 26.h,
                                child: Image.asset(ImageManager.camera)),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text('Back Side'),
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 17.h,
                ),
                DriverInfoDesign(
                  image: ImageManager.number,
                  text1: 'License number',
                  text2: 'License number',
                  width: 18.w,
                  height: 18.w,
                ),

                SizedBox(
                  height: 17.h,
                ),
                DriverInfoDesign(
                  image: ImageManager.route,
                  text1: 'Driving for (miles)',
                  text2: 'Driving for (miles)',
                  width: 16.w,
                  height: 16.w,
                ),
                SizedBox(
                  height: 19.h,
                ),
                // flatbtn('Done'),
                //  **************
                elevtedBtn(
                    text: 'Done',
                    click: () {
                      Get.to(BottomNavBar());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
