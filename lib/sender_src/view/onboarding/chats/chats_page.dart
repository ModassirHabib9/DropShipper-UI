import 'package:dropshpper_app/sender_src/view/onboarding/chats/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsMessageScreen extends StatelessWidget {
  const ChatsMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Conversation(),
    );
  }
}
