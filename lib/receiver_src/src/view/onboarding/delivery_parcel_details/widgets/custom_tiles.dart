import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../sender_src/utils/colors_resource.dart';
import '../../../../../../sender_src/utils/images.dart';

class CustomTiles extends StatelessWidget {
  const CustomTiles(
      {Key? key,
      this.titleTxt,
      this.subtitleTxt,
      this.leading,
      this.trailing,
      this.image})
      : super(key: key);

  final String? image;
  final String? titleTxt;
  final String? subtitleTxt;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      leading: leading ??
          Image.asset(
            image!,
            height: 36.h,
            width: 36.w,
          ),
      trailing: trailing,
      title: Text(
        titleTxt!,
        style: TextStyle(fontSize: 10.sp, color: colorSplash),
      ),
      subtitle: Text(subtitleTxt!, style: TextStyle(color: colorBlack)),
    );
  }
}
