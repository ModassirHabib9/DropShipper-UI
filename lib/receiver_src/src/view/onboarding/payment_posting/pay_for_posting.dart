import 'package:dropshpper_app/receiver_src/src/view/onboarding/payment_posting/widgets/custom_appbar.dart';
import 'package:dropshpper_app/receiver_src/src/widgets/my_button.dart';
import 'package:dropshpper_app/receiver_src/src/widgets/my_custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors_resource_receiver.dart';
import '../notification/notiofication_page.dart';

class PaymentForPostingScreen extends StatefulWidget {
  PaymentForPostingScreen({Key? key}) : super(key: key);

  @override
  State<PaymentForPostingScreen> createState() =>
      _PaymentForPostingScreenState();
}

class _PaymentForPostingScreenState extends State<PaymentForPostingScreen> {
  bool checkboxVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.h),
        child: CustomAppbar(
          text: "Payments for Posting",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
                  child: Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                        // color: Color(0xFFF0F0F0),
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 18.r,
                          child: Image.asset(
                            'assets/images/dollar-symbol.png',
                            height: 35.h,
                            width: 35.w,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Text("2.99", style: TextStyle(fontSize: 25.sp)),
                      ],
                    ),
                  ),
                ),
                MyCustomTextField(
                  hint: "Card number",
                  width: double.infinity,
                  maxLines: 1,
                  prefixIcon: Icon(Icons.add_card),
                ),
                SizedBox(height: 10.h),
                MyCustomTextField(
                  hint: "Card holder's name",
                  maxLines: 1,
                  width: double.infinity,
                  prefixIcon: Icon(Icons.person),
                ),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Expanded(
                      child: MyCustomTextField(
                        hint: "Exp. Date",
                        maxLines: 1,
                        width: double.infinity,
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                    SizedBox(width: 40.h),
                    Expanded(
                      child: MyCustomTextField(
                        hint: "CVV",
                        maxLines: 1,
                        width: double.infinity,
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
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
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: 'Hello ',
                          style: TextStyle(fontSize: 12.sp, color: colorBlack),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Standard Terms of agreement',
                                style: TextStyle(color: colorBlue)),
                          ],
                        ),
                      ),
                    ),
                    //Text//SizedBox
                  ], //<Widget>[]
                ),
                MyCustomTabbarButton3(
                  mergin: EdgeInsets.symmetric(vertical: 10.h),
                  child: Text("    PAY NOW     "),
                  text_color: colorBlack,
                  colorss: appMainColor,
                  icon: Icon(Icons.lock_open_outlined),
                  onPressedbtn: () {
                    _settingModalBottomSheet(context);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.r), topLeft: Radius.circular(20.r))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          // height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 20.0.h),
                child: Text(
                  'Payment Successful',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ),
              MyCustomTabbarButton3(
                text: "DONE",
                // colorss: appMainColor,
                icon_child: FloatingActionButton(
                  mini: true,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      side: BorderSide(color: colorWhite)),
                  child: Icon(Icons.done),
                  onPressed: () {},
                ),
                onPressedbtn: () {
                  Get.to(NotificationScreen());
                },
                mergin: EdgeInsets.all(2),
                // child: Text("name"),
              )
            ],
          ),
        );
      });
}
