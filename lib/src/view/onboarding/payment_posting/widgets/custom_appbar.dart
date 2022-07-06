import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../utils/colors_resource.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      foregroundColor: colorBlack,
      backgroundColor: colorTransprent,
      centerTitle: true,
      automaticallyImplyLeading: false,
      backwardsCompatibility: false,
      leading: Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: IconButton(
          color: colorBlack,
          icon: Center(
              child: Padding(
            padding: const EdgeInsets.only(left: 3.0, bottom: 3),
            child: Icon(Icons.arrow_back_ios),
          )),
          onPressed: () {
            Get.back();
            // Navigator.pop(context);
          },
        ),
      ),
      title: Text(text!),
    );
  }
}
