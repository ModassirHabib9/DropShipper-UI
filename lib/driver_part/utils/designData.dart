import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:dropshpper_app/driver_part/utils/textStrings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// *************************   sizedbox   *************************************************
SizedBox Fixsize({double? h, double? w}) {
  return SizedBox(
    height: h == null ? 10.0.h : h.h,
    width: w == null ? 10.0.w : w.w,
  );
}

// ***********************  Icon **********************************************************************
Card arrowBack() {
  return Card(
    child: Icon(
      Icons.arrow_back_ios_new,
      color: ColorsManager.yellow,
    ),
  );
}

// ******************** Divider **********************************************************************
Divider divider() {
  return Divider(
    height: 2.h,
    thickness: 2.r,
  );
}
// ********************

Container elevtedBtn({
  Function()? click,
  required String text,
}) {
  return Container(
    width: double.infinity,
    height: 50.h,
    decoration: BoxDecoration(),
    child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(ColorsManager.yellow),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 14.sp),
        ),
        onPressed: click
        // Get.to(DriverHome());

        ),
  );
}

// *************
Column messageDsn() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            ImageManager.comment,
            width: 20.w,
            height: 20.h,
          ),
          SizedBox(
            width: 25.w,
          ),
          Text(
            'Message',
            style: TextStyle(fontSize: 8.sp, color: ColorsManager.icontxt),
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

// Container flatbtn(
//    String? btn,
//   String? images11,

// )
// {
//   return Container(
//     width: double.infinity,
//     height: 44.h,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(50.0),
//       color: ColorsManager.yellow,
//     ),
//     child: FlatButton(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           images11 != null
//               ?  Image.asset(
//                   ImageManager.lock,
//                   width: 16,
//                   height: 23,
//                 ):Container(),
//           SizedBox(
//             width: 14.w,
//           ),
//           Text(
//             btn.toString(),
//             style: TextStyle(
//               color: ColorsManager.lightWhite,
//               fontSize: 14.sp,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//         ],
//       ),
//       onPressed: () {},
//     ),
//   );
// }
// }
