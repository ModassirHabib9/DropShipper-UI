import 'package:dropshpper_app/sender_src/view/onboarding/delivery_parcel_details/widgets/delivery_custom_tiles.dart';
import 'package:dropshpper_app/sender_src/widgets/appbar_back_btn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../driver_part/utils/colors_Manager.dart';
import '../../../../driver_part/utils/imageManager.dart';
import '../../../../driver_part/utils/textStrings.dart';
import '../../../../receiver_src/src/widgets/my_button.dart';
import '../../../../sender_src/utils/images.dart';
import '../../../utils/colors_resource.dart';
import '../../../utils/font_size.dart';
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
                leading: AppbarBackButton(),
                title: Text("Delivery Parcel Details"),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Package Size",
                                    style: MyFontTheme.font_header),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: messageDsn(),
                  ),
                  SizedBox(height: 30.h),
                  MyCustomButton(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      border: Border.all(
                        color: colorRed,
                      ),
                    ),
                    text: "REMOVE DELIVERY POST",
                    width: double.infinity,
                    text_color: colorRed,
                    colorss: colorTransprent,
                    mergin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                    onPressedbtn: () {
                      Get.to(PostDeliveryScreen());
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Column messageDsn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            ImageManager.comment,
            width: 40.w,
            height: 25.h,
          ),
          SizedBox(
            width: 10.w,
          ),
          Text(
            'Message',
            style: TextStyle(fontSize: 10.sp, color: ColorsManager.icontxt),
          ),
        ],
      ),
      Text(
        TextStrings.lorem2,
        style: TextStyle(
            /*fontSize: 12.sp,*/
            ),
      ),
    ],
  );
}
