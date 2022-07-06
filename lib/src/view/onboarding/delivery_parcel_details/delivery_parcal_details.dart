import 'package:dropshpper_app/src/view/onboarding/delivery_parcel_details/widgets/delivery_custom_tiles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../utils/colors_resource.dart';
import '../../../utils/images.dart';
import '../post_delivery/post_delivery.dart';

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
                      child: Icon(Icons.arrow_back_ios),
                    )),
                    onPressed: () {
                      Get.back();
                      // Navigator.pop(context);
                    },
                  ),
                ),
                title: Text("Delivery Parcel Details"),
              ),
              Image.asset(
                Images.onboarding_1,
                height: 150,
              ),
              MyCustomDelivery(
                image: Image.asset(
                  Images.tab_3,
                  height: 35.h,
                  width: 35.w,
                ),
                title: "Receiver",
                subTitle: "Oliva Ann",
              ),
              // Divider(),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          Images.tab_3,
                          height: 40.h,
                          width: 35.w,
                        ),
                        SizedBox(width: 20),
                        Column(
                          children: [
                            Text("Package Size"),
                            Text("Medium size"),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          Images.offer_img,
                          height: 30.h,
                          width: 30.w,
                        ),
                        Column(
                          children: [
                            Text("Offer"),
                            Text("\$70"),
                          ],
                        )
                      ],
                    ),
                  ],
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
                subTitle: "William ST, NY sjf sjndf ",
              ),

              TextButton(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Text('REMOVE DELIVERY POST',
                      style: TextStyle(
                          color: colorRed,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.teal,
                  onSurface: colorYellow,
                  side: BorderSide(color: colorRed, width: 2),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                ),
                onPressed: () {
                  print('Pressed');
                  Get.to(PostDeliveryScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
