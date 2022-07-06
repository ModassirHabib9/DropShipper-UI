import 'package:dropshpper_app/src/utils/images.dart';
import 'package:dropshpper_app/src/view/onboarding/auth/social_auth.dart';
import 'package:dropshpper_app/src/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/colors_resource.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorTransprent,
        elevation: 0,
        title: Center(
          child: Text(
            "DropShpper",
            style: TextStyle(color: colorBlack),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(12)),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 14.0),
                  child: Image.asset(
                    Images.chose_internet,
                    height: 200.w,
                    width: 200.w,
                    // color: Colors.black,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  // height: MediaQuery.of(context).size.height * 0.3,
                  child: Center(
                    child: Text(
                      "Select Language to continue",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: colorBlack,
                  ),
                  // padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            radius: 20,
                            child: Image.asset(
                              Images.uk_flag,
                              height: 30,
                              width: 30,
                            )),
                        Center(
                          child: Text(
                            "English",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colorWhite),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: colorWhite),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: colorGray),
                    // color: Colors.black,
                  ),
                  // padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            radius: 20,
                            child: Image.asset(
                              Images.spain_flag,
                              height: 30,
                              width: 30,
                            )),
                        Center(
                          child: Text(
                            "SPANISH",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colorBlack),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: colorWhite),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: colorGray),
                    // color: Colors.black,
                  ),
                  // padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SocialAuthScreen()),
                      );
                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            radius: 20.r,
                            child: Image.asset(
                              Images.china_flag,
                              height: 30.h,
                              width: 30.w,
                            )),
                        Center(
                          child: Text(
                            "CHINESE",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colorBlack),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: colorWhite),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: colorGray),
                    // color: Colors.black,
                  ),
                  // padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                            radius: 20.r,
                            child: Image.asset(
                              Images.japan_flag,
                              height: 30.h,
                              width: 30.w,
                            )),
                        Center(
                          child: Text(
                            "JAPANESE",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: colorBlack),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: colorWhite),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                MyCustomButton(
                  text: "CONTINUE WITH ENGLISH",
                  colorss: appMainColor,
                  mergin: EdgeInsets.only(top: 10),
                  onPressedbtn: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SocialAuthScreen()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
