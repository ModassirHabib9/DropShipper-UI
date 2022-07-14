import 'package:dropshpper_app/driver_part/driverInfo/driverinfoDesign.dart';
import 'package:dropshpper_app/driver_part/editProfile_1/editProfile_1.dart';
import 'package:dropshpper_app/driver_part/edit_profile_address1/edit_profile_address1.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfile2 extends StatefulWidget {
  const EditProfile2({Key? key}) : super(key: key);

  @override
  State<EditProfile2> createState() => _EditProfile2State();
}

class _EditProfile2State extends State<EditProfile2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 220.h,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/edit/bg_edit.png',
                      // fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 5.h,
                      width: 10.w,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return EditProfile1();
                          }));
                        },
                        child: arrowBack()),
                    Positioned(
                      top: 96.h,
                      left: 100.w,
                      child: Image.asset(
                        ImageManager.men1,
                        width: 112.w,
                        height: 112.h,
                      ),
                    ),
                    Positioned(
                        top: 170.h,
                        left: 186.w,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15.w,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                          ),
                        )),
                  ],
                ),
              ),
              Text(
                'James Clark',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 20.h,
              ),
              DriverInfoDesign(
                text1: 'James',
                text2: 'James',
                image: ImageManager.user_2,
                color1: Colors.black,
                color2: Colors.black,
                width: 26.w,
                height: 26.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              DriverInfoDesign(
                text1: 'Clark',
                text2: 'Clark',
                image: ImageManager.user_2,
                color1: Colors.black,
                color2: Colors.black,
                width: 26.w,
                height: 26.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              DriverInfoDesign(
                text1: 'clark213@email.com',
                text2: 'clark213@email.com',
                image: ImageManager.email,
                color1: Colors.black,
                color2: Colors.black,
                width: 14.w,
                height: 12.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              DriverInfoDesign(
                text1: '+1-098765-89',
                text2: '+1-098765-89',
                image: ImageManager.mobile,
                color1: Colors.black,
                color2: Colors.black,
                width: 12.w,
                height: 18.h,
              ),
              SizedBox(
                height: 40.h,
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
                    'UPDATE INFO',
                    style: TextStyle(
                      color: ColorsManager.lightWhite,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  onPressed: () {
                    Get.to(EditProfile1());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
