import 'package:dropshpper_app/receiver_src/src/view/onboarding/delivery_parcel_details/widgets/custom_tiles.dart';
import 'package:dropshpper_app/receiver_src/src/view/onboarding/profile/profile.dart';
import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/receiver_src/src/utils/images_receiver.dart';
import 'package:dropshpper_app/sender_src/view/onboarding/started/widgets/custum_card.dart';
import 'package:dropshpper_app/sender_src/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../receiver_src/src/view/onboarding/driver_profile/driver_profile.dart';

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
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Get.to(DriverProfileScreen());
                  },
                  child: Text('Profile')),
            ),
            CustomTiles(
              image: Images.phone,
              titleTxt: "Mobile",
              subtitleTxt: "+1-098765-2",
              trailing: CircleAvatar(
                  backgroundColor: colorBlue,
                  radius: 40,
                  child: Icon(Icons.phone)),
            ),
            Divider(height: 5),
            CustomTiles(
              image: Images.bottom_No_3,
              titleTxt: "Sender",
              subtitleTxt: "John Doe",
              trailing: CircleAvatar(
                  radius: 40, child: Image.asset(Images.profile_1)),
            ),
            Divider(height: 5),
            CustomTiles(
              image: Images.hand_parcel,
              titleTxt: "Receiver",
              subtitleTxt: "Alan Smith",
              trailing: CircleAvatar(
                  radius: 40, child: Image.asset(Images.profile_3)),
            ),
            Divider(),
            CustomTiles(
              leading: CircleAvatar(
                  backgroundColor: appMainColor,
                  radius: 20,
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

class Model {
  String? address;
  double? lat;
  double? long;
  Color? color;
  //Other fields if needed....
  Model(this.address, this.color);
//initialise other fields so on....
}

class View extends StatefulWidget {
  View({Key? key}) : super(key: key);

  @override
  State<View> createState() => _ViewState();
}

class _ViewState extends State<View> {
  List<Model> list = [];

  @override
  void initState() {
    super.initState();
    list.add(Model("Hyderabad", colorRed));
    list.add(Model("Visakhapatnam", Colors.green));
    list.add(Model("Vijayawada", colorBlue));
  }

  void addNew() {
    setState(() {
      list.add(Model("Karnool", colorBlack));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15),
        color: colorWhite,
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (con, ind) {
              return ind != 0
                  ? Column(mainAxisSize: MainAxisSize.min, children: [
                      Row(children: [
                        Column(
                          children: List.generate(
                            3,
                            (ii) => Padding(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                child: Container(
                                  height: 3.h,
                                  width: 2.w,
                                  color: colorGray,
                                )),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          color: Colors.grey.withAlpha(60),
                          height: 0.5,
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 20,
                          ),
                        ))
                      ]),
                      Row(children: [
                        Icon(Icons.location_on, color: list[ind].color),
                        Text(list[ind].address!,
                            style: TextStyle(color: list[ind].color))
                      ])
                    ])
                  : Row(children: [
                      Icon(Icons.location_on),
                      Text(list[ind].address!,
                          style: TextStyle(color: list[ind].color))
                    ]);
            }));
  }
}
