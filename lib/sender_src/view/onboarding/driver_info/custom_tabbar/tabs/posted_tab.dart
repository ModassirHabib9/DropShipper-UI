import 'package:dropshpper_app/receiver_src/src/view/onboarding/post_delivery/post_delivery.dart';
import 'package:dropshpper_app/sender_src/utils/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

import '../../../../../../receiver_src/src/view/onboarding/delivery_parcel_details/delivery_parcal_details.dart';
import '../../../started/widgets/custum_card.dart';
import '../widgets/new.dart';

class PostedTabScreen extends StatefulWidget {
  const PostedTabScreen({Key? key}) : super(key: key);

  @override
  State<PostedTabScreen> createState() => _PostedTabScreenState();
}

class _PostedTabScreenState extends State<PostedTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        child: Column(
          children: [
            MyCustomCard(
              title: "Post New delivery",
              subtitle:
                  "Lorem ipsum dolor sit amet, consectetur adipis cing elit.",
              image: Image.asset(Images.tab_1),
              onPressed: () {
                Get.to(PostDeliveryScreen());
              },
            ),
            InkWell(
                onTap: () {
                  Get.to(DeliveryParcalDetailsScreen());
                },
                child: Card2()),
            SizedBox(height: 10.h),
            InkWell(
                onTap: () {
                  Get.to(DeliveryParcalDetailsScreen());
                },
                child: Card2()),
          ],
        ),
      ),
    );
  }
}
