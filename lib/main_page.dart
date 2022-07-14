import 'package:dropshpper_app/sender_src/view/onboarding/driver_info/custom_tabbar/widgets/new.dart';
import 'package:dropshpper_app/receiver_src/src/view/onboarding/driver_info/driver_information.dart';
import 'package:dropshpper_app/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'driver_part/driverInfo/driverInfo.dart';

class MainPageAppSelection extends StatefulWidget {
  const MainPageAppSelection({Key? key}) : super(key: key);

  @override
  State<MainPageAppSelection> createState() => _MainPageAppSelectionState();
}

class _MainPageAppSelectionState extends State<MainPageAppSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Get.to(SplashScreen());
                },
                child: Text("Sender App"),
              ),
              RaisedButton(
                onPressed: () {
                  Get.to(Reciver_HomeTabScreen());
                },
                child: Text("Receiver App"),
              ),
              RaisedButton(
                onPressed: () {
                  Get.to(DriverInfo());
                },
                child: Text("Driver App"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
