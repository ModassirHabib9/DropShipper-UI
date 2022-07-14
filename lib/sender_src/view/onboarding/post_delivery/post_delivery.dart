import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/payment_posting/widgets/custom_appbar.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/post_delivery/widgets/custom_radio_btn.dart';
import 'package:dropshpper_app/sender_src/widgets/my_button.dart';
import 'package:dropshpper_app/sender_src/widgets/my_custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../sender_src/utils/images.dart';
import '../payment_posting/pay_for_posting.dart';

class PostDeliveryScreen extends StatefulWidget {
  PostDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<PostDeliveryScreen> createState() => _PostDeliveryScreenState();
}

class _PostDeliveryScreenState extends State<PostDeliveryScreen> {
  String? _groupValue;

  ValueChanged<String?> _valueChangedHandler() {
    return (value) => setState(() => _groupValue = value!);
  }

  bool checkboxVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.h),
          child: CustomAppbar(text: "Post Delivery")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: Column(
          children: [
            Image.asset(
              Images.hand_parcel,
              height: 90.h,
              // width: 120,
            ),
            SizedBox(height: 10.h),
            MyCustomTextField(
              maxLines: 1,
              hint: "Full Name",
              width: double.infinity,
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(height: 10.h),
            MyCustomTextField(
              maxLines: 1,
              hint: "Pakage Receiver",
              width: double.infinity,
              prefixIcon: Icon(Icons.person),
            ),
            SizedBox(height: 10.h),
            Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 20.r,
                    backgroundColor: appMainColor,
                    child: Image.asset(
                      Images.tab_2,
                      height: 25.h,
                      width: 25.w,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  flex: 7,
                  child: MyCustomTextField(
                    hint: "Pickup Location",
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: appMainColor,
                    child: Image.asset(
                      Images.tab_3,
                      height: 25.h,
                      width: 25.w,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  flex: 7,
                  child: MyCustomTextField(
                    hint: "Destination Location",
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: appMainColor,
                  child: Image.asset(
                    Images.tab_3,
                    height: 25.h,
                    width: 25.w,
                  ),
                ),
                SizedBox(width: 12.w),
                Expanded(
                  flex: 2,
                  child: MyRadioOption<String>(
                    value: 'XS',
                    groupValue: _groupValue,
                    onChanged: _valueChangedHandler(),
                    label: 'XS',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MyRadioOption<String>(
                    value: 'S',
                    groupValue: _groupValue,
                    onChanged: _valueChangedHandler(),
                    label: 'S',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MyRadioOption<String>(
                    value: 'M',
                    groupValue: _groupValue,
                    onChanged: _valueChangedHandler(),
                    label: 'M',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MyRadioOption<String>(
                    value: 'L',
                    groupValue: _groupValue,
                    onChanged: _valueChangedHandler(),
                    label: 'L',
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: MyRadioOption<String>(
                    value: 'XL',
                    groupValue: _groupValue,
                    onChanged: _valueChangedHandler(),
                    label: 'XL',
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: appMainColor,
                    child: Image.asset(
                      Images.tab_3,
                      height: 25.h,
                      width: 25.w,
                    ),
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  flex: 7,
                  child: MyCustomTextField(
                    hint: "Offer (\$)",
                    maxLines: 1,
                    // width: double.infinity,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            MyCustomTextField(
              maxLines: 3,
              hint: "Message",
              // width: double.infinity,
              // prefixIcon: Icon(Icons.add),
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  activeColor: appMainColor,
                  value: this.checkboxVal,
                  onChanged: (value) {
                    setState(() {
                      this.checkboxVal = value!;
                    });
                  },
                ),
                SizedBox(
                  width: 5.w,
                ), //SizedBox
                Text(
                  'Deliver package at door Step',
                  style: TextStyle(fontSize: 17.0),
                ), //Text//SizedBox
              ], //<Widget>[]
            ),
            SizedBox(height: 15),
            MyCustomButton(
              text: "CONTINUE",
              colorss: appMainColor,
              mergin: EdgeInsets.zero,
              onPressedbtn: () {
                Get.to(PaymentForPostingScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
