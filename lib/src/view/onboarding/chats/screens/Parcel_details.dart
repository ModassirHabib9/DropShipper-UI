import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:dropshpper_app/src/utils/images.dart';
import 'package:dropshpper_app/src/view/onboarding/started/widgets/custum_card.dart';
import 'package:dropshpper_app/src/widgets/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ParcelDetailsScreen extends StatelessWidget {
  const ParcelDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              dense: true,
              leading: Image.asset(Images.profile_2),
              title: Text('Sender'),
              subtitle: Text('James Clark',
                  style: TextStyle(color: ColorResources.kblack)),
              trailing: RaisedButton(
                  color: appMainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {},
                  child: Text('profile')),
            ),
            ListTile(
              dense: true,
              leading: Image.asset(Images.start_pic_1),
              title: Text('Mobile '),
              subtitle: Text('+1-098765-2',
                  style: TextStyle(color: ColorResources.kblack)),
              trailing: CircleAvatar(
                  backgroundColor: ColorResources.kblue,
                  radius: 40,
                  child: Icon(Icons.phone)),
            ),
            Divider(height: 5),
            ListTile(
              dense: true,
              leading: Image.asset(
                Images.onboarding_1,
                height: 40,
                width: 40,
              ),
              title: Text('Sender'),
              subtitle: Text('John Doe',
                  style: TextStyle(color: ColorResources.kblack)),
              trailing: CircleAvatar(
                  backgroundColor: ColorResources.kblue,
                  radius: 40,
                  child: Image.asset(Images.profile_1)),
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: Image.asset(Images.tab_1),
              title: Text('Sender'),
              subtitle: Text('John Doe',
                  style: TextStyle(color: ColorResources.kblack)),
              trailing: CircleAvatar(
                  backgroundColor: ColorResources.kblue,
                  radius: 40,
                  child: Image.asset(Images.profile_3)),
            ),
            Divider(),
            ListTile(
              dense: true,
              leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: Image.asset(
                    Images.tab_2,
                    height: 36,
                    width: 36,
                  )),
              title: Text('Pickup Location'),
              subtitle: Text('Broad way road, NY',
                  style: TextStyle(color: ColorResources.kblack)),
            ),
            ListTile(
              dense: true,
              leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.orange,
                  child: Image.asset(
                    Images.tab_3,
                    height: 36,
                    width: 36,
                  )),
              title: Text('Destination Location'),
              subtitle: Text('William ST, NY',
                  style: TextStyle(color: ColorResources.kblack)),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
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
                                  height: 3,
                                  width: 2,
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
