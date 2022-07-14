import 'dart:async';

import 'package:dropshpper_app/driver_part/chatgrounp_3_4/chat.dart';
import 'package:dropshpper_app/driver_part/chatgrounp_3_4/chatgroup_tabDesign.dart';
import 'package:dropshpper_app/driver_part/driver_Home_2/driver_Home_2.dart';
import 'package:dropshpper_app/driver_part/editProfile_1/editProfile_1.dart';
import 'package:dropshpper_app/driver_part/paymentPosting1/paymentPosting1.dart';
import 'package:dropshpper_app/driver_part/underway_3/Underway.dart';
import 'package:dropshpper_app/driver_part/underway_3/Completed.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class underway_3 extends StatefulWidget {
  const underway_3({Key? key}) : super(key: key);

  @override
  State<underway_3> createState() => _underway_3State();
}

class _underway_3State extends State<underway_3> {
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return EditProfile1();
                                  }));
                                },
                                child: Container(
                                  child: CircleAvatar(
                                    child: Image.asset(ImageManager.men1),
                                  ),
                                ),
                              ),
                              Container(
                                child: Image.asset(
                                  'assets/dropshippers.png',
                                  width: 133.w,
                                  height: 26.h,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.orange.shade200),
                                width: 40.w,
                                height: 40.h,
                                child: Icon(Icons.search),
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
                                  text: "UNDERWAY",
                                ),
                                Tab(
                                  text: "COMPLETED",
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
                      child: Underway(),
                    ),
                    Container(
                      child: Completed(),
                    ),
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
