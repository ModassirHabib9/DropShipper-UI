import 'package:dropshpper_app/driver_part/driverInfo/driverinfoDesign.dart';
import 'package:dropshpper_app/driver_part/editProfile_1/editProfile_1.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfileAddress1 extends StatefulWidget {
  const EditProfileAddress1({Key? key}) : super(key: key);

  @override
  State<EditProfileAddress1> createState() => EediPprofilAaddress1State();
}

class EediPprofilAaddress1State extends State<EditProfileAddress1> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    onTap: () {
                      print('hellow1');
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return EditProfile1();
                      }));
                    },
                    child: arrowBack()),
                Center(
                  child: Image.asset(
                    ImageManager.addressMap,
                    width: 116.w,
                    height: 116.h,
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Center(
                  child: Text(
                    'Current Home Address',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                EditUiDesign(
                  text1: 'USA',
                  image: ImageManager.australia,
                  icon: Icons.arrow_drop_down,
                  width: 18.w,
                  height: 22.h,
                ),
                SizedBox(
                  height: 12.h,
                ),
                EditUiDesign(
                  text1: 'California',
                  image: ImageManager.map,
                  width: 18.w,
                  height: 22.h,
                ),
                SizedBox(
                  height: 12.h,
                ),
                EditUiDesign(
                  text1: 'Los Angeles',
                  image: ImageManager.architecture,
                  width: 18.w,
                  height: 22.h,
                ),
                SizedBox(
                  height: 12.h,
                ),
                EditUiDesign(
                  text1: 'Beverly Glen Boulevard',
                  image: ImageManager.home,
                  width: 18.w,
                  height: 22.h,
                ),
                SizedBox(
                  height: 12.h,
                ),
                EditUiDesign(
                  text1: '90001',
                  image: ImageManager.zip_conde,
                  width: 18.w,
                  height: 22.h,
                ),
                SizedBox(
                  height: 33.h,
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
      ),
    );
  }

  Widget EditUiDesign({
    String? image,
    String? text1,
    width,
    height,
    IconData? icon,
    bool isIcon = false,
  }) {
    return Container(
      width: double.infinity.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: ColorsManager.lightWhite,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: TextField(
        decoration: InputDecoration(
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 31.w, right: 19.w),
            child: image != null
                ? Image.asset(
                    image,
                    width: width,
                    height: height,
                  )
                : Container(),
          ),
          border: InputBorder.none,
          label: Text(
            text1.toString(),
            style: TextStyle(color: Colors.black),
          ),
          // suffixIcon: Padding(
          //   padding: EdgeInsets.only(right: 15.w),
          //   child: icon != null
          //       ? Icon(
          //           icon,
          //           color: Colors.black,
          //         )
          //       : null,
          // ),

          suffixIcon: icon != null
              ? DropdownButton<String>(
                  value: _chosenValue,
                  //elevation: 5,
                  style: TextStyle(color: Colors.black),

                  items: <String>[
                    'Android',
                    'IOS',
                    'Flutter',
                    'Node',
                    'Java',
                    'Python',
                    'PHP',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? value) {
                    setState(() {
                      _chosenValue = value!;
                    });
                  },
                )
              : Text(''),
        ),
      ),
    );
  }
}
