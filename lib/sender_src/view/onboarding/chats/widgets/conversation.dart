import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:dropshpper_app/sender_src/utils/images.dart';
import 'package:flutter/material.dart';

import '../app_theme.dart';
import '../models/message_model.dart';
import '../models/user_model.dart';

class Conversation extends StatelessWidget {
  const Conversation({
    Key? key,
    @required this.user,
  }) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
                reverse: false,
                itemCount: messages.length,
                itemBuilder: (context, int index) {
                  final message = messages[index];
                  bool isMe = message.sender!.id == currentUser.id;
                  return Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: isMe
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            if (!isMe)
                              CircleAvatar(
                                radius: 15,
                                backgroundImage: AssetImage(Images.profile_1),
                              ),
                            SizedBox(
                              width: 10,
                            ),
                            Row(
                              mainAxisAlignment: isMe
                                  ? MainAxisAlignment.end
                                  : MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  constraints: BoxConstraints(
                                      maxWidth:
                                          MediaQuery.of(context).size.width *
                                              0.6),
                                  decoration: BoxDecoration(
                                      color: isMe
                                          ? MyTheme.kAccentColor
                                          : Colors.grey[200],
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        topRight: Radius.circular(16),
                                        bottomLeft:
                                            Radius.circular(isMe ? 12 : 0),
                                        bottomRight:
                                            Radius.circular(isMe ? 0 : 12),
                                      )),
                                  child: isMe
                                      ? Text(
                                          'Lorem ipsum dolor sit',
                                          style: MyTheme.bodyTextMessage
                                              .copyWith(
                                                  color: isMe
                                                      ? colorWhite
                                                      : Colors.grey[800]),
                                        )
                                      : Container(
                                          child: Text(
                                            'Lorem ipsum dolor sit amet, consec. Fusce efficitur',
                                            style: MyTheme.bodyTextMessage
                                                .copyWith(
                                                    color: isMe
                                                        ? colorWhite
                                                        : Colors.grey[800]),
                                          ),
                                        ),
                                ),
                                SizedBox(width: 5),
                                if (isMe)
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage(Images.profile_2),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
