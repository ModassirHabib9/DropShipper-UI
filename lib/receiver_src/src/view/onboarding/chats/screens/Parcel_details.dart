import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/utils/images_receiver.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../delivery_parcel_details/widgets/custom_tiles.dart';

class ParcelDetailsScreen extends StatelessWidget {
  const ParcelDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomTiles(
              image: Images.start_pic_1,
              titleTxt: "Sender",
              subtitleTxt: "James Clark",
              trailing: RaisedButton(
                  color: appMainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r)),
                  onPressed: () {},
                  child: Text('Profile')),
            ),
            CustomTiles(
              image: Images.phone,
              titleTxt: "Mobile",
              subtitleTxt: "+1-098765-2",
              trailing: CircleAvatar(
                  backgroundColor: colorBlue,
                  radius: 40.r,
                  child: Icon(Icons.phone)),
            ),
            Divider(height: 5.h),
            CustomTiles(
              image: Images.bottom_No_3,
              titleTxt: "Sender",
              subtitleTxt: "John Doe",
              trailing: CircleAvatar(
                  radius: 40.r, child: Image.asset(Images.profile_1)),
            ),
            Divider(height: 5.h),
            CustomTiles(
              image: Images.hand_parcel,
              titleTxt: "Receiver",
              subtitleTxt: "Alan Smith",
              trailing: CircleAvatar(
                  radius: 40.h, child: Image.asset(Images.profile_3)),
            ),
            Divider(),
            CustomTiles(
              leading: CircleAvatar(
                  backgroundColor: appMainColor,
                  radius: 20.r,
                  child: Image.asset(
                    Images.tab_2,
                    width: 20.w,
                    height: 20.h,
                  )),
              titleTxt: "Pickup Location",
              subtitleTxt: "Broad way road, NY",
            ),
            CustomTiles(
              leading: CircleAvatar(
                  backgroundColor: appMainColor,
                  radius: 20,
                  child: Image.asset(
                    Images.order_deliver,
                    width: 20.w,
                    height: 20.h,
                  )),
              titleTxt: "Destination Location",
              subtitleTxt: "William ST, NY",
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Images.tab_3,
                        height: 40.h,
                        width: 40.w,
                      ),
                      SizedBox(width: 15.w),
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
            )
          ],
        ),
      ),
    );
  }
}
