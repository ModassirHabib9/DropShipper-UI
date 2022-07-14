import 'package:dropshpper_app/driver_part/driver_Home/driverhome.dart';
import 'package:dropshpper_app/driver_part/driver_Home_2/driver_home2_Design.dart';
import 'package:dropshpper_app/driver_part/paymentPosting1/paymentPosting1.dart';
import 'package:dropshpper_app/driver_part/utils/Universalflatbtn.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:dropshpper_app/driver_part/utils/textStrings.dart';
import 'package:dropshpper_app/driver_part/utils/universalRowDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class driver_Home_2 extends StatefulWidget {
  const driver_Home_2({Key? key}) : super(key: key);

  @override
  State<driver_Home_2> createState() => _driver_Home_2State();
}

class _driver_Home_2State extends State<driver_Home_2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          Get.to(DriverHome());
                        },
                        child: arrowBack()),
                    Fixsize(
                      w: 36.h,
                    ),
                    Text(
                      'Delivery Parcel Details',
                      style: TextStyle(fontSize: 16.sp),
                    ),
                  ],
                ),
                Fixsize(
                  h: 19.h,
                ),
                Image.asset(
                  ImageManager.sky,
                  width: 172.w,
                  height: 172.h,
                ),
                DriverHomeDesign2(
                  text1: 'Sender',
                  text2: 'John Doe',
                  image1: ImageManager.user_2,
                  image2: ImageManager.img1,
                ),
                Fixsize(h: 12.h),
                divider(),
                Fixsize(h: 12.h),
                DriverHomeDesign2(
                  text1: 'Receiver',
                  text2: 'Alan Smith',
                  image1: ImageManager.delivery,
                  image2: ImageManager.img2,
                ),
                Fixsize(h: 12.h),
                DriverHomeDesign2(
                  text1: 'Mobile',
                  text2: '+1-1234565-2',
                  image1: ImageManager.phone_call,
                  image2: ImageManager.telephone,
                ),
                Fixsize(h: 12.h),
                divider(),
                Fixsize(h: 12.h),
                DriverHomeDesign2(
                  text1: 'Pickup Location',
                  text2: 'Broad way road, NY',
                  image1: ImageManager.map1,
                ),
                Fixsize(h: 15.h),
                DriverHomeDesign2(
                  text1: 'Destination Location',
                  text2: 'William ST, NY',
                  image1: ImageManager.map2,
                ),
                Fixsize(h: 12.h),
                divider(),
                Fixsize(h: 9.h),
                universalRowDesign(
                  image1: ImageManager.box,
                  text1: 'Package Size',
                  text2: 'Medium size',
                  imageuniv: ImageManager.price,
                  textuniv1: 'Offer',
                  textuniv2: '\$70',
                ),
                Fixsize(h: 8.h),
                divider(),
                Fixsize(h: 8.h),
                messageDsn(),
                // *********************************** Error ****************
                Fixsize(h: 17.h),
                elevtedBtn(
                    text: 'Accept Delivery',
                    click: () {
                      Get.to(PaymentPosting1());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
