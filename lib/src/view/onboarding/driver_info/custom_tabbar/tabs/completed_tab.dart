import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../widgets/my_button.dart';
import '../../../started/widgets/custum_card.dart';

class CompletedTabScreen extends StatefulWidget {
  const CompletedTabScreen({Key? key}) : super(key: key);

  @override
  State<CompletedTabScreen> createState() => _CompletedTabScreenState();
}

class _CompletedTabScreenState extends State<CompletedTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 8, right: 8),
        child: Column(
          children: [
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/package.png',
                            width: 40, height: 40),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Receiver", style: TextStyle(fontSize: 10)),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/location (6).png',
                                width: 40, height: 40),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Destination Location",
                                    style: TextStyle(fontSize: 10)),
                                Text("William ST, NY"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Stepper(steps: , currentStep: 0),
                    Row(
                      children: [
                        Image.asset('assets/images/pickup.png',
                            width: 40, height: 40),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pickup Location",
                                style: TextStyle(fontSize: 10)),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    MyCustomButton2(
                      text: "Completed",
                      width: 250.w,
                      icon_child: Container(
                          // width: 25.w,
                          // height: 35.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            // color: Colors.white,
                          ),
                          child: Icon(Icons.check, color: Colors.white)),
                      // icon: Icon(Icons.check),
                      colorss: Colors.lightBlue,
                      mergin: EdgeInsets.all(0),
                      onPressedbtn: () {},
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/package.png',
                            width: 40, height: 40),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Receiver", style: TextStyle(fontSize: 10)),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/images/location (6).png',
                                width: 40, height: 40),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Destination Location",
                                    style: TextStyle(fontSize: 10)),
                                Text("William ST, NY"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Stepper(steps: , currentStep: 0),
                    Row(
                      children: [
                        Image.asset('assets/images/pickup.png',
                            width: 40, height: 40),
                        SizedBox(width: 10.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pickup Location",
                                style: TextStyle(fontSize: 10)),
                            Text("Alan Smith"),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    MyCustomButton2(
                      text: "Completed",
                      width: 250.w,
                      icon_child: Container(
                          // width: 25.w,
                          // height: 35.h,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                            // color: Colors.white,
                          ),
                          child: Icon(Icons.check, color: Colors.white)),
                      // icon: Icon(Icons.check),
                      colorss: Colors.lightBlue,
                      mergin: EdgeInsets.all(0),
                      onPressedbtn: () {},
                    ),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
