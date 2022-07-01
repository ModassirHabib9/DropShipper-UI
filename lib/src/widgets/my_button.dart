import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomButton extends StatelessWidget {
  MyCustomButton(
      {Key? key,
      this.text,
      this.onPressedbtn,
      this.colorss,
      this.child,
      this.text_color,
      this.decoration,
      this.mergin,
      this.height,
      this.width})
      : super(key: key);
  final String? text;
  final Function()? onPressedbtn;
  final Color? colorss;
  final Color? text_color;
  final EdgeInsetsGeometry? mergin;
  final Widget? child;
  final Decoration? decoration;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      height: height ?? 45.h,
      margin: mergin ?? EdgeInsets.all(20),
      width: width ?? double.infinity,
      child: FlatButton(
        child: child ?? Text(text!),
        onPressed: onPressedbtn!,
        color: colorss ?? Theme.of(context).primaryColor,
        textColor: text_color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}

class MyCustomButton2 extends StatelessWidget {
  MyCustomButton2(
      {Key? key,
      this.text,
      this.onPressedbtn,
      this.colorss,
      this.child,
      this.text_color,
      this.decoration,
      this.mergin,
      this.height,
      this.width,
      this.icon,
      this.icon_child})
      : super(key: key);
  final String? text;
  final Function()? onPressedbtn;
  final Color? colorss;
  final Color? text_color;
  final EdgeInsetsGeometry? mergin;
  final Widget? child;
  final Decoration? decoration;
  final double? height;
  final double? width;
  final Icon? icon;
  final Widget? icon_child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: decoration,
      height: height ?? 45.h,
      margin: mergin ?? EdgeInsets.all(20),
      width: width ?? double.infinity,
      child: FlatButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 40,
              child: icon_child ??
                  Icon(
                    icon!.icon,
                  ),
            ),
            SizedBox(width: 10.w),
            child ?? Text(text!),
          ],
        ),
        onPressed: onPressedbtn!,
        color: colorss ?? Theme.of(context).primaryColor,
        textColor: text_color ?? Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
