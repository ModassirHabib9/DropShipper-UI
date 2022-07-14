import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverInfoDesign extends StatelessWidget {
  DriverInfoDesign({
    Key? key,
    this.image,
    required this.text1,
    required this.text2,
    this.color1 = ColorsManager.icontxt,
    this.color2 = ColorsManager.icontxt,
    this.border,
    this.width = 13,
    this.height = 13,
    this.icon,
  }) : super(key: key);
  String? image;
  double? width;
  double? height;
  String text1;
  String? text2;
  double? border;
  Color? color1;
  Color? color2;
  IconData? icon;
  @override
  Widget build(BuildContext context) {
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
                    image!,
                    width: width,
                    height: height,
                    color: color2,
                  )
                : Container(),
          ),
          border: InputBorder.none,
          label: Text(
            text1,
            style: TextStyle(color: color1),
          ),
          // suffixIcon: Padding(
          //   padding: EdgeInsets.only(right: 15.w),
          //   child: icon != null
          //       ? Icon(
          //           icon!,
          //           color: Colors.black,
          //         )
          //       : Container(),
          // ),
        ),
      ),
    );
  }
}
