import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../../../../utils/colors_resource.dart';
import '../models/message_model.dart';
import '../screens/screen.dart';

import '../app_theme.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemCount: recentChats.length,
                itemBuilder: (context, int index) {
                  final recentChat = recentChats[index];
                  return Container(
                      margin: const EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundImage: AssetImage(recentChat.avatar!),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return ChatRoom(
                                  user: recentChat.sender,
                                );
                              }));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  recentChat.sender!.name!,
                                  style: MyTheme.heading2.copyWith(
                                    fontSize: 16,
                                  ),
                                ),
                                Text(
                                  recentChat.text!,
                                  style: MyTheme.bodyText1,
                                  maxLines: 1,
                                  overflow: TextOverflow.clip,
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                recentChat.time!,
                                style: MyTheme.bodyTextTime,
                              ),
                              CircleAvatar(
                                radius: 8,
                                backgroundColor: ColorResources.GREEN,
                              ),
                            ],
                          ),
                        ],
                      ));
                })
          ],
        ),
      ),
    );
  }
}
