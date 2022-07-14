import 'package:dropshpper_app/driver_part/chatgrounp_3_4/chat.dart';
import 'package:dropshpper_app/driver_part/chatgrounp_3_4/parceldetail.dart';
import 'package:dropshpper_app/driver_part/editProfile_1/editProfile_1.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatGroupTabDesign extends StatefulWidget {
  const ChatGroupTabDesign({Key? key}) : super(key: key);

  @override
  State<ChatGroupTabDesign> createState() => _ChatGroupTabDesignState();
}

class _ChatGroupTabDesignState extends State<ChatGroupTabDesign> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                  child: Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              arrowBack(),
                              InkWell(
                                onTap: () {
                                  Get.to(EditProfile1());
                                },
                                child: Container(
                                  padding: EdgeInsets.only(left: 73.w),
                                  child: Text(
                                    "Chat Group",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          child: TabBar(
                              onTap: (index) {
                                print("index: $index");
                              },
                              indicatorWeight: 6.0,
                              labelColor: ColorsManager.yellow,
                              unselectedLabelColor: ColorsManager.icontxt,
                              indicatorColor: ColorsManager.yellow,
                              tabs: [
                                Tab(
                                  text: "CHAT",
                                ),
                                Tab(
                                  text: "Parcel Details",
                                ),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
                //  *****************************************
                Expanded(
                  child: TabBarView(children: [
                    Container(
                      child: Chat(),
                    ),
                    Container(child: ParcelDetail()),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
