import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UniversalFlatButton extends StatefulWidget {
  Color? color1;
  Color? color2 = Color(0xff00AAC4);
  Color? color3 = Color(0xff00AAC4);
  UniversalFlatButton({Key? key, this.color1, this.color2, this.color3})
      : super(key: key);

  @override
  State<UniversalFlatButton> createState() => _UniversalFlatButtonState();
}

class _UniversalFlatButtonState extends State<UniversalFlatButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {},
        color: widget.color1,
        shape: new RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(30.0),
          side: BorderSide(color: ColorsManager.lightblue),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/true.png',
              color: widget.color2,
              width: 22.w,
              height: 22.h,
            ),
            SizedBox(
              width: 11.w,
            ),
            Text(
              'Mark Completed',
              style: TextStyle(fontSize: 14.sp, color: widget.color3),
            ),
          ],
        ));
  }
}

class FlatBtn extends StatefulWidget {
  String? btn;
  String? images11;
  Color? color1 = ColorsManager.yellow;
  double? ww;
  double? hh;

  Function()? onclick;
  FlatBtn(
      {Key? key,
      required this.btn,
      this.images11,
      this.onclick,
      this.color1,
      this.ww = 16,
      this.hh = 23})
      : super(key: key);

  @override
  State<FlatBtn> createState() => _FlatBtnState();
}

class _FlatBtnState extends State<FlatBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 44.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        // color: ColorsManager.yellow,
        color: widget.color1,
      ),
      child: FlatButton(
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 46.w, right: 50.w),
              child: widget.images11 != null
                  ? Image.asset(
                      widget.images11.toString(),
                      width: widget.ww,
                      height: widget.hh,
                    )
                  : Container(),
            ),
            Text(
              widget.btn.toString(),
              style: TextStyle(
                color: ColorsManager.lightWhite,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        onPressed: widget.onclick!(),
      ),
    );
  }
}
