import 'package:dropshpper_app/driver_part/driver_Home/driverhome.dart';
import 'package:dropshpper_app/driver_part/paymentPosting1/paymentPosting1.dart';
import 'package:dropshpper_app/driver_part/underway_3/Underway.dart';
import 'package:dropshpper_app/driver_part/underway_3/Underway_3.dart';
import 'package:dropshpper_app/driver_part/utils/colors_Manager.dart';
import 'package:dropshpper_app/driver_part/utils/imageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static List<Widget> screens = [DriverHome(), underway_3(), PaymentPosting1()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          // selectedItemColor: Colors.red,
          fixedColor: ColorsManager.yellow,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(ImageManager.homeBottom),
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(ImageManager.locationBottom),
              ),
              label: 'DELIVERY',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(ImageManager.userBottom),
              ),
              label: 'PROFILE',
            ),
          ]),
    );
  }
}
