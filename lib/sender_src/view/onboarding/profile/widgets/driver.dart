import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors_resource.dart';

class DriverInfoDesign extends StatelessWidget {
  DriverInfoDesign({
    Key? key,
    this.image,
    this.text1,
    this.border,
    this.onPressed,
  }) : super(key: key);
  String? image;
  double? width;
  double? height;
  String? text1;
  final Function()? onPressed;
  double? border;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          width: double.infinity.w,
          height: 44.h,
          decoration: BoxDecoration(
            color: Color(0xFFEEEAEA),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Image.asset(image!,
                    height: 30.h, width: 30.w, color: colorBlack),
                SizedBox(width: 12.w),
                Text(text1!)
              ],
            ),
          )),
    );
  }
}
