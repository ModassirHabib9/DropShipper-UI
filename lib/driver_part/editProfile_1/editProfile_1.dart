import 'package:dropshpper_app/driver_part/driver_Home/driverhome.dart';
import 'package:dropshpper_app/driver_part/editProfile_2/editProfile_2.dart';
import 'package:dropshpper_app/driver_part/edit_profile_address1/edit_profile_address1.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:dropshpper_app/driver_part/vehicleDetail/vehicleDetail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfile1 extends StatefulWidget {
  const EditProfile1({Key? key}) : super(key: key);

  @override
  State<EditProfile1> createState() => _EditProfile1State();
}

class _EditProfile1State extends State<EditProfile1> {
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
                            return DriverHome();
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
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EditProfile2();
                  }));
                },
                child: txtIcon(
                  text1: 'Edit Profile',
                  text2: 'Edit Profile',
                  image: ImageManager.user_edit,
                  color1: Colors.black,
                  color2: Colors.black,
                  width: 26.w,
                  height: 26.h,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return EditProfileAddress1();
                  }));
                },
                child: txtIcon(
                  text1: 'Address Info',
                  text2: 'Address Info',
                  image: ImageManager.home_map,
                  color1: Colors.black,
                  color2: Colors.black,
                  width: 22.w,
                  height: 22.h,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return VehicleDetail();
                  }));
                },
                child: txtIcon(
                  text1: 'Car Details',
                  text2: 'Car Details',
                  image: ImageManager.car_2,
                  color1: Colors.black,
                  color2: Colors.black,
                  width: 18.w,
                  height: 18.h,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              txtIcon(
                text1: 'STANDARD TERMS OF AGREEMENT',
                text2: 'STANDARD TERMS OF AGREEMENT',
                image: ImageManager.contract,
                color1: Colors.black,
                color2: Colors.black,
                width: 18.w,
                height: 22.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              txtIcon(
                text1: 'Share Dropship App',
                text2: 'Share Dropship App',
                image: ImageManager.share,
                color1: Colors.black,
                color2: Colors.black,
                width: 18.w,
                height: 19.h,
              ),
              SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 15.r,
                    backgroundColor: Color(0xffFF6B6B).withOpacity(0.4),
                    child: Image.asset(
                      ImageManager.logout,
                      width: 16.w,
                      height: 14.h,
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(VehicleDetail());
                      // Get.to()
                    },
                    child: Text(
                      'LOG OUT',
                      style: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.red),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget txtIcon({
    String? image,
    double? width,
    double? height,
    String? text1,
    String? text2,
    double? border,
    Color? color1,
    Color? color2,
    IconData? icon,
  }) {
    return Container(
      width: double.infinity.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: ColorsManager.lightWhite,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 31.w, right: 19.w),
            child: image != null
                ? Image.asset(
                    image,
                    width: width,
                    height: height,
                    color: color2,
                  )
                : Container(),
          ),
          Text(
            text1.toString(),
            style: TextStyle(color: color1),
          ),
        ],
      ),
    );
  }
}
