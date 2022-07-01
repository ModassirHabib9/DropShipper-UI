import 'package:dropshpper_app/src/widgets/my_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../auth/sign_up_Auth.dart';
import '../started/started_page.dart';

class AddressLocationScreen extends StatelessWidget {
  const AddressLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const SizedBox(height: 50),
              Image.asset("assets/images/address.png"),
              SizedBox(height: 20),
              Text(
                "Current Home Address",
                style: TextStyle(fontSize: 20),
              ),

              MyCustomButton2(
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                colorss: Colors.white,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/australia.png")),
                    const Text(
                      "Country",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 20),
              MyCustomButton2(
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                colorss: Colors.white,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 50, child: Image.asset("assets/images/map.png")),
                    const Text(
                      "Region",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 20),
              MyCustomButton2(
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                colorss: Colors.white,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 50,
                        child: Image.asset(
                            "assets/images/architecture-and-city.png")),
                    const Text(
                      "City",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              MyCustomButton2(
                mergin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                ),
                colorss: Colors.white,
                // text: "CONTINUE TO SIGN UP",
                onPressedbtn: () {},
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/home.png")),
                    const Text(
                      "Street address",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              MyCustomButton2(
                mergin: EdgeInsets.only(top: 40, bottom: 20),
                colorss: Colors.orange,
                text: "CONTINUE",
                onPressedbtn: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => StartedScreen(),
                    ),
                  );
                },
              ),
              Text(
                "Skip >",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
