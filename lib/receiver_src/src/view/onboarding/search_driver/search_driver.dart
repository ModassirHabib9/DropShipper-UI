import 'package:dropshpper_app/receiver_src/src/view/onboarding/delivery_parcel_details/widgets/delivery_custom_tiles.dart';
import 'package:dropshpper_app/receiver_src/src/view/onboarding/profile/profile.dart';
import 'package:dropshpper_app/receiver_src/src/widgets/my_custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors_resource_receiver.dart';
import '../../../utils/images_receiver.dart';
import '../driver_profile/driver_profile.dart';
import '../post_delivery/post_delivery.dart';

class SearchDriver extends StatelessWidget {
  const SearchDriver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                elevation: 0,
                foregroundColor: colorBlack,
                backgroundColor: colorTransprent,
                centerTitle: false,
                automaticallyImplyLeading: false,
                backwardsCompatibility: false,
                title: Text("Search Driver"),
                actions: [
                  Card(
                    elevation: 10,
                    margin: EdgeInsets.all(9),
                    child: IconButton(
                      color: colorBlack,
                      icon: const Center(
                          child: Padding(
                        padding: EdgeInsets.only(left: 0, bottom: 0),
                        child: Icon(Icons.close, color: colorRed),
                      )),
                      onPressed: () {
                        Get.back();
                        // Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              MyCustomTextField(
                hint: "Broadway",
                width: double.infinity,
                maxLines: 1,
                suffixIcon: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                  child: FloatingActionButton(
                    onPressed: () {},
                    mini: true,
                    backgroundColor: appMainColor.withOpacity(0.5),
                    child: Icon(Icons.search),
                  ),
                ),
              ),
              Text("   Search results:"),
              SizedBox(height: 20.h),
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r)),
                child: Column(
                  children: [
                    ListTile(
                      dense: true,
                      leading: Image.asset(Images.profile_2),
                      title: Text('Sender',
                          style:
                              TextStyle(fontSize: 12.sp, color: colorSplash)),
                      subtitle: Text('James Clark',
                          style: TextStyle(color: colorBlack)),
                      trailing: RaisedButton(
                          color: appMainColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.r)),
                          onPressed: () {
                            Get.to(DriverProfileScreen());
                          },
                          child: Text('Profile')),
                    ),
                    ListTile(
                      dense: true,
                      leading: Image.asset(
                        Images.phone,
                        height: 35.h,
                        width: 35.w,
                      ),
                      title: Text(
                        'Mobile ',
                        style: TextStyle(fontSize: 12.sp, color: colorSplash),
                      ),
                      subtitle: Text('+1-098765-2',
                          style: TextStyle(color: colorBlack)),
                      trailing: CircleAvatar(
                          backgroundColor: colorBlue,
                          radius: 40.r,
                          child: Icon(Icons.phone)),
                    ),
                    ListTile(
                      dense: true,
                      leading: Image.asset(
                        Images.address_2,
                        height: 35.h,
                        width: 35.w,
                      ),
                      title: Text(
                        'Location ',
                        style: TextStyle(fontSize: 12.sp, color: colorSplash),
                      ),
                      subtitle: Text('Broad way road 90002, NY, USA',
                          style: TextStyle(color: colorBlack)),
                    ),
                    ListTile(
                      dense: true,
                      leading: Image.asset(
                        Images.driving_for,
                        height: 35.h,
                        width: 35.w,
                      ),
                      title: Text(
                        'Driving for ',
                        style: TextStyle(fontSize: 12.sp, color: colorSplash),
                      ),
                      subtitle:
                          Text('51 Miles', style: TextStyle(color: colorBlack)),
                    ),
                    ListTile(
                      dense: true,
                      leading: Image.asset(
                        Images.driving_car,
                        height: 35.h,
                        width: 35.w,
                      ),
                      title: Text(
                        'Vehicle',
                        style: TextStyle(fontSize: 12.sp, color: colorSplash),
                      ),
                      subtitle: Text('Kia Picanto,2020 ',
                          style: TextStyle(color: colorBlack)),
                    ),
                    ListTile(
                      dense: true,
                      leading: Image.asset(
                        Images.driving_star,
                        height: 35.h,
                        width: 35.w,
                      ),
                      title: Text(
                        'Rating',
                        style: TextStyle(fontSize: 12.sp, color: colorSplash),
                      ),
                      subtitle: Row(
                        children: [
                          Text('5.0', style: TextStyle(color: colorBlack)),
                          Text('\(28 Reviews\)'),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
