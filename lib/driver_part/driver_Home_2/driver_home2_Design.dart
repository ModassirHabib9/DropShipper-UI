import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriverHomeDesign2 extends StatefulWidget {
  String? image1;
  String? image2;
  String? text1;
  String? text2;
  DriverHomeDesign2(
      {Key? key, this.image1, this.image2, this.text1, this.text2})
      : super(key: key);

  @override
  State<DriverHomeDesign2> createState() => DriverHomeDesign2State();
}

class DriverHomeDesign2State extends State<DriverHomeDesign2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          widget.image1.toString(),
          width: 26.w,
          height: 26.h,
        ),
        Fixsize(
          w: 20.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.text1.toString(),
                style:
                    TextStyle(fontSize: 10.sp, color: ColorsManager.icontxt)),
            Text(widget.text2.toString(), style: TextStyle(fontSize: 12.sp)),
          ],
        ),
        Spacer(),
        widget.image2 != null
            ? Image.asset(
                widget.image2.toString(),
                width: 34.w,
                height: 34.h,
              )
            : Container(),
      ],
    );
  }
}
