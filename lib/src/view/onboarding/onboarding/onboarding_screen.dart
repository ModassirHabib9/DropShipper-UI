import 'package:dropshpper_app/src/helper/content_model.dart';
import 'package:dropshpper_app/src/view/onboarding/choos_language/choose_language.dart';
import 'package:dropshpper_app/src/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/colors_resource.dart';

class OnbordingScreen extends StatefulWidget {
  @override
  _OnbordingScreenState createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  int currentIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

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
      body: Column(
        children: [
          Container(
            height: 450,
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (int index) {
                setState(() {
                  currentIndex = index;
                });
              },
              itemBuilder: (_, i) {
                return Padding(
                  padding: const EdgeInsets.all(40),
                  child: Column(
                    children: [
                      Image.asset(
                        contents[i].image!,
                        height: 200,
                      ),
                      SizedBox(height: 40.h),
                      Text(
                        contents[i].title!,
                        style: const TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Text(
                        contents[i].discription!,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: colorGray,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              height: 40.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => buildDot(index, context),
                ),
              ),
            ),
          ),
          MyCustomButton(
            colorss: appMainColor,
            mergin: EdgeInsets.symmetric(horizontal: 20),
            text: currentIndex == contents.length - 1 ? "GET STARTED" : "Next",
            onPressedbtn: () {
              if (currentIndex == contents.length - 1) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChooseLanguageScreen(),
                  ),
                );
              }
              _controller!.nextPage(
                duration: Duration(milliseconds: 100),
                curve: Curves.bounceIn,
              );
            },
          ),
          TextButton(
            child:
                Text(currentIndex == contents.length - 2 ? "Skip >" : "Skip >"),
            onPressed: () {
              if (currentIndex == contents.length - 2) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChooseLanguageScreen(),
                  ),
                );
              }
              _controller!.nextPage(
                duration: Duration(milliseconds: 100),
                curve: Curves.bounceIn,
              );
            },
          ),
        ],
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: appMainColor,
      ),
    );
  }
}
