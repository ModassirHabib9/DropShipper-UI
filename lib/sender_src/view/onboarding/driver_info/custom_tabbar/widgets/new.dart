import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:dropshpper_app/receiver_src/src/utils/images_receiver.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/driver_info/custom_tabbar/widgets/row_design.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../driver_part/utils/colors_Manager.dart';
import '../../../../../../driver_part/utils/imageManager.dart';
import '../../../../../../driver_part/utils/textStrings.dart';

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut ";

class Card2 extends StatelessWidget {
  final Function()? onTap;
  Card2({Key? key, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    buildCollapsed1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RowDesignUpper(
              onTap: onTap,
              image: Images.hand_parcel,
              text1: "Post New delivery",
              text2: "Lorem ipsum ",
              col2_image1: Images.tab_2,
              col2_text1: "Pickup Location",
              col2_text2: "Broad way road, NY",
              col3_image1: Images.order_deliver,
              col3_text1: "Destination Location",
              col3_text2: "William ST, NY",
            ),
          ]);
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            RowDesignExpanded(
              image: Images.hand_parcel,
              text1: "Post New delivery",
              text2: "Lorem ipsum ",
              col2_image1: Images.tab_2,
              col2_text1: "Pickup Location",
              col2_text2: "Broad way road, NY",
              col3_image1: Images.order_deliver,
              col3_text1: "Destination Location",
              col3_text2: "William ST, NY",
              col4_image1: Images.tab_3,
              col4_text1: "Package Size",
              col4_text2: "Medium size",
            ),
            SizedBox(height: 10.h),
            messageDsn(),
          ]);
    }
    // *************

    return ExpandableNotifier(
        child: ScrollOnExpand(
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expandable(
                collapsed: buildCollapsed1(),
                expanded: buildExpanded1(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Builder(
                  builder: (context) {
                    var controller =
                        ExpandableController.of(context, required: true)!;
                    return Center(
                      child: Container(
                        child: IconButton(
                          icon: Icon(
                              controller.expanded
                                  ? Icons.keyboard_arrow_up
                                  : Icons.keyboard_arrow_down,
                              color: appMainColor),
                          onPressed: () {
                            controller.toggle();
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    ));
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
          fontSize: 12.sp,
        ),
      ),
    ],
  );
}
