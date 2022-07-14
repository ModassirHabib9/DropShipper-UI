import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../../driver_part/utils/colors_Manager.dart';
import '../../../../../../receiver_src/src/utils/colors_resource_receiver.dart';
import '../../../../../../receiver_src/src/utils/images_receiver.dart';
import '../../../../../../receiver_src/src/widgets/my_button.dart';
import '../../../../../utils/font_size.dart';

class RowDesignUpper extends StatelessWidget {
  const RowDesignUpper(
      {Key? key,
      this.image,
      this.text1,
      this.text2,
      this.col2_image1,
      this.col2_text1,
      this.col2_text2,
      this.col3_image1,
      this.col3_text1,
      this.col3_text2,
      this.col4_image1,
      this.col4_text1,
      this.col4_text2,
      this.onTap})
      : super(key: key);
  final String? image;
  final String? text1;
  final String? text2;
  final Function()? onTap;

  /// second column
  final String? col2_image1;
  final String? col2_text1;
  final String? col2_text2;

  /// therd column
  final String? col3_image1;
  final String? col3_text1;
  final String? col3_text2;

  /// Fourth column
  final String? col4_image1;
  final String? col4_text1;
  final String? col4_text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(Images.hand_parcel, width: 40.w, height: 40.h),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$text1", style: TextStyle(fontSize: 10.sp)),
                    Text(text2!),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
              width: 25,
              child: FloatingActionButton(
                  mini: true,
                  elevation: 0,
                  backgroundColor: colorRed,
                  onPressed: () {
                    _settingModalBottomSheet(context);
                  },
                  child: Icon(Icons.close)),
            ),
          ],
        ),
        Divider(color: colorSplash),
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: appMainColor,
              child: Image.asset(col2_image1!, width: 30.w, height: 30.h),
            ),
            SizedBox(width: 10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(col2_text1!, style: TextStyle(fontSize: 10)),
                Text(col2_text2!),
              ],
            ),
          ],
        ),

        /// column 3
        SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: appMainColor,
              child: Image.asset(col3_image1!, width: 30.w, height: 30.h),
            ),
            SizedBox(width: 10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(col3_text1!, style: TextStyle(fontSize: 10)),
                Text(col3_text2!),
              ],
            ),
          ],
        ),
        // Divider(color: colorSplash),
        // Row(
        //   children: [
        //     Expanded(
        //       child: FloatingActionButton(
        //         onPressed: () {
        //           // Get.to(Chats_PostalTabbar());
        //         },
        //         child: CircleAvatar(
        //           radius: 25,
        //           backgroundColor: colorWhite,
        //           child: Image.asset(
        //             Images.message,
        //             width: 25.w,
        //             height: 25.h,
        //           ),
        //         ),
        //       ),
        //     ),
        //     SizedBox(width: 30),
        //   ],
        // ),
      ],
    );
  }
}

/// Expanded Items
class RowDesignExpanded extends StatelessWidget {
  const RowDesignExpanded(
      {Key? key,
      this.image,
      this.text1,
      this.text2,
      this.col2_image1,
      this.col2_text1,
      this.col2_text2,
      this.col3_image1,
      this.col3_text1,
      this.col3_text2,
      this.col4_image1,
      this.col4_text1,
      this.col4_text2})
      : super(key: key);
  final String? image;
  final String? text1;
  final String? text2;

  /// second column
  final String? col2_image1;
  final String? col2_text1;
  final String? col2_text2;

  /// therd column
  final String? col3_image1;
  final String? col3_text1;
  final String? col3_text2;

  /// Fourth column
  final String? col4_image1;
  final String? col4_text1;
  final String? col4_text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(Images.hand_parcel, width: 40.w, height: 40.h),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("$text1", style: TextStyle(fontSize: 10.sp)),
                    Text(text2!),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 25,
              width: 25,
              child: FloatingActionButton(
                  mini: true,
                  backgroundColor: colorRed,
                  onPressed: () {
                    print("object");
                    _settingModalBottomSheet(context);
                  },
                  child: Icon(Icons.close)),
            ),
          ],
        ),
        Divider(color: colorSplash),
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: appMainColor,
              child: Image.asset(col2_image1!, width: 30.w, height: 30.h),
            ),
            SizedBox(width: 10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(col2_text1!, style: TextStyle(fontSize: 10)),
                Text(col2_text2!),
              ],
            ),
          ],
        ),

        /// column 3
        SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(
              radius: 20.r,
              backgroundColor: appMainColor,
              child: Image.asset(col3_image1!, width: 30.w, height: 30.h),
            ),
            SizedBox(width: 10.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(col3_text1!, style: TextStyle(fontSize: 10)),
                Text(col3_text2!),
              ],
            ),
          ],
        ),

        /// column 4
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(col4_image1!, width: 40.w, height: 40.h),
                SizedBox(width: 10.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(col4_text1!, style: MyFontTheme.font_header),
                    Text(col4_text2!),
                  ],
                ),
              ],
            ),
            SizedBox(
              // height: 25,
              // width: 25,
              child: Row(
                children: [
                  Image.asset(Images.offer_img),
                  Column(
                    children: [
                      Text("Offer", style: TextStyle(fontSize: 8)),
                      Text("\$70"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Divider(color: colorSplash),
      ],
    );
  }
}

/// bottom sheet
void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20))),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: 320.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Image.asset(
                Images.message_fail,
                height: 100.h,
                width: 100.w,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(
                  'Are your sure to remove this delivery post',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20),
              MyCustomButton(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
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
                  // _settingModalBottomSheet2(context);
                },
              ),
              SizedBox(height: 10.h),
              TextButton(
                  child: Text("CANCEL"),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
              SizedBox(height: 10.h),
            ],
          ),
        );
      });
}
