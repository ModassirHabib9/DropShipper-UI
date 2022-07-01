import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../started/widgets/custum_card.dart';

class PostedTabScreen extends StatefulWidget {
  const PostedTabScreen({Key? key}) : super(key: key);

  @override
  State<PostedTabScreen> createState() => _PostedTabScreenState();
}

class _PostedTabScreenState extends State<PostedTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomCard(
              title: "Post New delivery",
              subtitle:
                  "Lorem ipsum dolor sit amet, consectetur adipis cing elit.",
              image: Image.asset('assets/images/package.png'),
            ),
          ],
        ),
      ),
    );
  }
}
