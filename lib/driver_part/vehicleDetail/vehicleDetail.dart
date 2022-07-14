import 'package:dropshpper_app/driver_part/driverInfo/driverinfoDesign.dart';
import 'package:dropshpper_app/driver_part/editProfile_1/editProfile_1.dart';
import 'package:dropshpper_app/driver_part/notification2/notification2.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VehicleDetail extends StatefulWidget {
  const VehicleDetail({Key? key}) : super(key: key);

  @override
  State<VehicleDetail> createState() => _VehicleDetailState();
}

class _VehicleDetailState extends State<VehicleDetail> {
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
                Row(
                  children: [
                    Card(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: ColorsManager.yellow,
                      ),
                    ),
                    Fixsize(w: 73.w),
                    Text(
                      'Car Details',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ),

                SizedBox(
                  height: 13.sp,
                ),
                // DesignDriver(),

                DriverInfoDesign(
                  text1: 'Registration Number',
                  image: ImageManager.car,
                  text2: 'Registration Number',
                ),
                SizedBox(
                  height: 21.h,
                ),
                DriverInfoDesign(
                  text1: 'Make',
                  image: ImageManager.companey,
                  text2: 'Make',
                ),
                SizedBox(
                  height: 21.h,
                ),
                Row(
                  children: [
                    Expanded(
                      child: DriverInfoDesign(
                        text1: 'Model',
                        image: ImageManager.car_steering,
                        text2: 'Model',
                      ),
                    ),
                    SizedBox(
                      width: 27.w,
                    ),
                    Expanded(
                      child: DriverInfoDesign(
                        text1: 'Year',
                        image: ImageManager.calender,
                        text2: 'Year',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
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
                  height: 21.h,
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
                      width: 7.w,
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
                  height: 21.h,
                ),
                DriverInfoDesign(
                    image: ImageManager.number,
                    text1: 'License number',
                    text2: 'License number'),
                SizedBox(
                  height: 21.h,
                ),
                DriverInfoDesign(
                    image: ImageManager.route,
                    text1: 'Driving for (miles)',
                    text2: 'Driving for (miles)'),
                SizedBox(
                  height: 21.h,
                ),
                Container(
                  width: double.infinity,
                  height: 44.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0.r),
                    color: ColorsManager.yellow,
                  ),
                  child: FlatButton(
                    child: Text(
                      'UPDATE PROFILE',
                      style: TextStyle(
                        color: ColorsManager.lightWhite,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () {
                      Get.to(
                        EditProfile1(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
