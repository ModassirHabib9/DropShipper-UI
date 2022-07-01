import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';

Container buildChatComposer() {
  return Container(
    padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 10),
    color: Colors.white,
    // height: 80,
    child: Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14),
            height: 45,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                // Image.asset('Images.bar2', height: 20, width: 20),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Type your message ...',
                      hintStyle: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/Path 12630.png'),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
