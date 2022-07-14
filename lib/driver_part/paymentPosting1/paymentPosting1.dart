import 'package:dropshpper_app/driver_part/driverInfo/driverinfoDesign.dart';
import 'package:dropshpper_app/driver_part/underway_3/Underway_3.dart';
import 'package:dropshpper_app/driver_part/utils/Universalflatbtn.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/designData.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentPosting1 extends StatefulWidget {
  const PaymentPosting1({Key? key}) : super(key: key);

  @override
  State<PaymentPosting1> createState() => _PaymentPosting1State();
}

class _PaymentPosting1State extends State<PaymentPosting1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.r),
            child: Column(children: [
              Row(
                children: [
                  arrowBack(),
                  Fixsize(
                    w: 36.h,
                  ),
                  Text(
                    'Receive Payment',
                    style: TextStyle(fontSize: 16.sp),
                  ),
                ],
              ),
              SizedBox(
                height: 250.h,
              ),
              // *********************
              btnDsign(),
              SizedBox(
                height: 20.h,
              ),
              DriverInfoDesign(
                image: ImageManager.car,
                text1: 'Card number/ IBAN',
                text2: 'Card number/ IBAN',
                color2: Color(0xff707070),
                width: 27.w,
                height: 17.h,
              ),
              Fixsize(
                h: 17.h,
              ),
              DriverInfoDesign(
                image: ImageManager.user_2,
                text1: "Card holder's name",
                text2: "Card holder's name",
                width: 26.w,
                height: 26.h,
              ),
              Fixsize(
                h: 17.h,
              ),
              Row(
                children: [
                  Expanded(child: rowDesign(text1: 'Exp. Date')),
                  SizedBox(
                    width: 35.w,
                  ),
                  Expanded(child: rowDesign(text1: 'CVV')),
                ],
              ),

              SizedBox(
                height: 35.h,
              ),
              Container(
                height: 46.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xffFFBB17)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0.r),
                        side: BorderSide(
                          color: Color(0xffFFDC8A),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0.r),
                            topRight: Radius.circular(20.0.r),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 17.h,
                                  ),
                                  Text(
                                    'You will receive your payment \nshortly',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 17.sp),
                                  ),
                                  SizedBox(height: 160.h),
                                  FlatBtn(
                                    color1: Color(0xff0095AC),
                                    onclick: () {
                                      Navigator.of(context).push(
                                          MaterialPageRoute(builder: (context) {
                                        return underway_3();
                                      }));
                                    },
                                    btn: 'Done',
                                    ww: 22.w,
                                    hh: 22.h,
                                    images11: 'assets/true_tick.png',
                                  )
                                ],
                              ));
                        });
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 51.w,
                      ),
                      Image.asset(
                        ImageManager.lock,
                        width: 15.w,
                        height: 23.h,
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Text(
                        'RECIEVE PAYMENT',
                        style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      ),
                    ],
                  ),

// ****************
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget rowDesign({
    String? text1,
  }) {
    return Container(
      width: double.infinity.w,
      height: 44.h,
      decoration: BoxDecoration(
          color: ColorsManager.lightWhite,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.grey, width: 1.w)),
      child: Padding(
        padding: EdgeInsets.only(left: 31.w),
        child: TextField(
          decoration: InputDecoration(
              label: Text(text1.toString()), border: InputBorder.none),
        ),
      ),
    );
  }

  Widget btnDsign() {
    return Container(
      width: 155.w,
      height: 44.h,
      decoration: BoxDecoration(
        color: ColorsManager.lightWhite,
        borderRadius: BorderRadius.circular(50.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            ImageManager.dollar,
            width: 25.w,
            height: 25.h,
          ),
          InkWell(
            onTap: () {
              Get.to(underway_3());
            },
            child: Text('  2.99',
                style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
