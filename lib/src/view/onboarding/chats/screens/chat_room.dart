import 'package:dropshpper_app/src/utils/colors_resource.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../app_theme.dart';
import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../widgets/widgets.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key, @required this.user}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
  final User? user;
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                decoration: const BoxDecoration(
                    color: colorWhite,
                    shape: BoxShape.rectangle,
                    boxShadow: [BoxShadow(spreadRadius: 40, blurRadius: 40)]),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Conversation(user: widget.user),
                ),
              ),
            ),
            buildChatComposer()
          ],
        ),
      ),
    );
  }
}
