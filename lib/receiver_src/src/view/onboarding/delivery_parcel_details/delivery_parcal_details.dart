import 'package:dropshpper_app/receiver_src/src/view/onboarding/delivery_parcel_details/widgets/delivery_custom_tiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors_resource_receiver.dart';
import '../../../utils/images_receiver.dart';
import '../post_delivery/post_delivery.dart';
import '../search_driver/search_driver.dart';

class DeliveryParcalDetailsScreen extends StatelessWidget {
  const DeliveryParcalDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                foregroundColor: colorBlack,
                backgroundColor: colorTransprent,
                centerTitle: true,
                automaticallyImplyLeading: false,
                backwardsCompatibility: false,
                leading: Card(
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                  child: IconButton(
                    color: colorBlack,
                    icon: Center(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 3.0, bottom: 3),
                      child: Icon(Icons.arrow_back_ios, color: appMainColor),
                    )),
                    onPressed: () {
                      Get.back();
                      // Navigator.pop(context);
                    },
                  ),
                ),
                title: Text("Delivery Parcel Details"),
              ),
              SizedBox(height: 10.h),
              Image.asset(
                Images.onboarding_1,
                height: 150.h,
              ),
              SizedBox(height: 20.h),
              MyCustomDelivery(
                onPressed: () {
                  Get.to(SearchDriver());
                },
                image: Image.asset(
                  Images.hand_parcel,
                  height: 35.h,
                  width: 35.w,
                ),
                title: "Sender",
                subTitle: "John Doe",
              ),
              Divider(),
              MyCustomDelivery(
                image_path: Images.tab_2,
                title: "Pickup locatin",
                subTitle: "Broad Way road, NY",
              ),
              MyCustomDelivery(
                image_path: Images.tab_3,
                title: "Destination Location",
                subTitle: "William ST, NY",
              ),
              Divider(),
              ListTile(
                dense: true,
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Offer"),
                    Text("\$70"),
                  ],
                ),
                subtitle:
                    Text("Medium size", style: TextStyle(color: colorBlack)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Package Size", style: TextStyle(color: colorGray)),
                    Image.asset(
                      Images.offer_img,
                      height: 35.h,
                      width: 35.w,
                    ),
                  ],
                ),
                leading: Image.asset(
                  Images.tab_3,
                  height: 40.h,
                  width: 35.w,
                ),
              ),
              Divider(),
              MyCustomDelivery(
                image: Image.asset(
                  Images.tab_3,
                  height: 40,
                  width: 35,
                ),
                title: "Message",
                subTitle:
                    "Lorem ipsum dolor sit amet, consectetur adipis cing elit. Nam dapibus ac libero id blandit. dolor sit amet, consectetur  ",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
