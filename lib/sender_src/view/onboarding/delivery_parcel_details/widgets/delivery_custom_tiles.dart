import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/font_size.dart';

class MyCustomDelivery extends StatelessWidget {
  const MyCustomDelivery(
      {Key? key, this.image, this.title, this.subTitle, this.image_path})
      : super(key: key);

  final Image? image;
  final String? title;
  final String? image_path;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: false,
      leading: image ??
          CircleAvatar(
            radius: 20,
            backgroundColor: appMainColor,
            child: Image.asset(
              '$image_path',
              height: 25.h,
              width: 25.w,
            ),
          ),
      title: Text(
        '$title!',
        style: MyFontTheme.font_header,
      ),
      subtitle: Text(
        '$subTitle!',
        style: TextStyle(color: colorBlack),
      ),
    );
  }
}
