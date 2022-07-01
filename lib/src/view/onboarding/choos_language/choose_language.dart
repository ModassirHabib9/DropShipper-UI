import 'package:dropshpper_app/src/view/onboarding/auth/social_auth.dart';
import 'package:dropshpper_app/src/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Text(
            "DropShpper",
            style: TextStyle(color: Colors.black),
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
                    "assets/images/internet.png",
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
                    color: Colors.black,
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
                              'assets/images/united-kingdom.png',
                              height: 30,
                              width: 30,
                            )),
                        Center(
                          child: Text(
                            "English",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: Colors.white),
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
                    border: Border.all(color: Colors.grey),
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
                              'assets/images/spain.png',
                              height: 30,
                              width: 30,
                            )),
                        Center(
                          child: Text(
                            "SPANISH",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: Colors.white),
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
                    border: Border.all(color: Colors.grey),
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
                            radius: 20,
                            child: Image.asset(
                              'assets/images/china.png',
                              height: 30,
                              width: 30,
                            )),
                        Center(
                          child: Text(
                            "CHINESE",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: Colors.white),
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
                    border: Border.all(color: Colors.grey),
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
                              'assets/images/japan.png',
                              height: 30,
                              width: 30,
                            )),
                        Center(
                          child: Text(
                            "JAPANESE",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Text(
                          "        ",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                MyCustomButton2(
                  text: "CONTINUE WITH ENGLISH",
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
