import 'package:dropshpper_app/sender_src/widgets/appbar_back_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../sender_src/utils/colors_resource.dart';

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
      leading: AppbarBackButton(),
      title: Text(text!),
    );
  }
}
