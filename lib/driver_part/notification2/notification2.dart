import 'package:dropshpper_app/driver_part/driver_Home/driverhome.dart';
import 'package:dropshpper_app/driver_part/editProfile_2/editProfile_2.dart';
import 'package:dropshpper_app/driver_part/notification2/notification_design.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Notification2 extends StatefulWidget {
  const Notification2({Key? key}) : super(key: key);

  @override
  State<Notification2> createState() => _Notification2State();
}

class _Notification2State extends State<Notification2> {
  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return DriverHome();
                        }));
                      },
                      child: arrowBack()),
                  Fixsize(
                    w: 36.h,
                  ),
                  Text(
                    'Notification',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 13.h,
              ),
              Text(
                'Today',
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              NotificationDesign(
                images: ImageManager.delivery,
                title: 'Lorem Ipsum',
                subtitle: 'Lorem Ipsum dolor sit amit',
              ),
              SizedBox(
                height: 20.h,
              ),
              NotificationDesign(
                images: ImageManager.map1,
                title: 'Lorem Ipsum',
                subtitle: 'Lorem Ipsum dolor sit amit',
              ),
              SizedBox(
                height: 20.h,
              ),
              NotificationDesign(
                images: ImageManager.map2,
                title: 'Title here',
                subtitle: 'Lorem Ipsum dolor sit amit...',
              ),
              SizedBox(
                height: 18.h,
              ),
              Text(
                'Yesterday',
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(
                height: 12.h,
              ),
              NotificationDesign(
                images: ImageManager.map2,
                title: 'Title here',
                subtitle: 'Lorem Ipsum dolor sit amit...',
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
