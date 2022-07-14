import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/sender_src/utils/images.dart';
import 'package:dropshpper_app/sender_src/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../auth/sign_up_Auth.dart';
import '../started/started_page.dart';

class AddressLocationScreen extends StatelessWidget {
  const AddressLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const SizedBox(height: 50),
              Image.asset(Images.address),
              SizedBox(height: 20.h),
              Text(
                "Current Home Address",
                style: TextStyle(fontSize: 20.sp),
              ),

              MyCustomButton2(
                width: double.infinity,
                text_color: appMainColor,
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: colorGray),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                colorss: colorWhite,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child: Text("Country", style: TextStyle(color: colorBlack)),
                icon_child:
                    SizedBox(width: 50.w, child: Image.asset(Images.austrilia)),
              ),
              // SizedBox(height: 20),
              MyCustomButton2(
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: colorGray),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                colorss: colorWhite,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child: Text("Region", style: TextStyle(color: colorBlack)),
                icon_child:
                    SizedBox(width: 50.w, child: Image.asset(Images.address_2)),
              ),
              // SizedBox(height: 20),
              MyCustomButton2(
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: colorGray),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                colorss: colorWhite,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child: Text("City", style: TextStyle(color: colorBlack)),
                icon_child:
                    SizedBox(width: 50.w, child: Image.asset(Images.address_3)),
              ),
              MyCustomButton2(
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: colorGray),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                colorss: colorWhite,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child:
                    Text("Street address", style: TextStyle(color: colorBlack)),
                icon_child:
                    SizedBox(width: 50.w, child: Image.asset(Images.address_4)),
              ),
              MyCustomButton(
                mergin:
                    EdgeInsets.only(top: 40, bottom: 20, left: 8.0, right: 8.0),
                colorss: appMainColor,
                text: "CONTINUE",
                onPressedbtn: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => StartedScreen(),
                    ),
                  );
                },
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => StartedScreen(),
                    ),
                  );
                },
                child: Text(
                  "Skip >",
                  style: TextStyle(
                    color: colorGray,
                    fontSize: 20.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
