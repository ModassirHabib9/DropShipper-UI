import 'package:dropshpper_app/src/view/onboarding/chats/chats_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../widgets/my_button.dart';
import '../../../chats/screens/chat_room.dart';
import '../../../started/widgets/custum_card.dart';

class UnderWayTabScreen extends StatefulWidget {
  const UnderWayTabScreen({Key? key}) : super(key: key);

  @override
  State<UnderWayTabScreen> createState() => _UnderWayTabScreenState();
}

class _UnderWayTabScreenState extends State<UnderWayTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomCard(
                title: "Post New delivery",
                subtitle:
                    "Lorem ipsum dolor sit amet, consectetur adipis cing elit.",
                image: Image.asset('assets/images/package.png'),
              ),
              Card(
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
                        text: "Open Chat",
                        width: 250.w,
                        icon: Icon(Icons.chat),
                        colorss: Colors.orange,
                        mergin: EdgeInsets.all(0),
                        onPressedbtn: () {
                          Get.to(ChatRoom());
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
