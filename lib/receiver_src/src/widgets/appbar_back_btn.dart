import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors_resource_receiver.dart';

class AppbarBackButton extends StatelessWidget {
  const AppbarBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: IconButton(
        color: colorBlack,
        icon: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Icon(Icons.arrow_back_ios, color: appMainColor),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
