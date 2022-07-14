import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class universalRowDesign extends StatefulWidget {
  String? image1;
  String? text1;
  String? text2;
  String? imageuniv;
  String? textuniv1;
  String? textuniv2;

  universalRowDesign(
      {Key? key,
      this.image1,
      this.text1,
      this.text2,
      this.imageuniv,
      this.textuniv1,
      this.textuniv2})
      : super(key: key);
  @override
  State<universalRowDesign> createState() => _universalRowDesignState();
}

class _universalRowDesignState extends State<universalRowDesign> {
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
            children: [
              Text(widget.text1.toString(),
                  style:
                      TextStyle(fontSize: 10.sp, color: ColorsManager.icontxt)),
              Text(widget.text2.toString(), style: TextStyle(fontSize: 12.sp)),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Image.asset(
                widget.imageuniv.toString(),
                width: 34.w,
                height: 34.h,
              ),
              Column(
                children: [
                  Text(widget.textuniv1.toString(),
                      style: TextStyle(
                          fontSize: 10.sp, color: ColorsManager.icontxt)),
                  Text(widget.textuniv2.toString(),
                      style: TextStyle(fontSize: 12.sp)),
                ],
              )
            ],
          )
        ]);
  }
}
