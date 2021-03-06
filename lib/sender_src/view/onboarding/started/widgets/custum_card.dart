import 'package:dropshpper_app/sender_src/utils/colors_resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCustomCard extends StatelessWidget {
  MyCustomCard(
      {Key? key,
      this.leading,
      this.trailing,
      this.title,
      this.subtitle,
      this.image,
      this.onPressed})
      : super(key: key);
  final Widget? leading;
  final Widget? trailing;
  final String? title;
  final String? subtitle;
  final Image? image;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      child: ListTile(
        onTap: onPressed,
        leading: Container(
          width: 50,
          height: 50,
          child: image,
        ),
        title: Text(title!),
        subtitle: Column(
          children: [
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(right: 10, top: 10),
              child:
                  Text(subtitle!, maxLines: 2, overflow: TextOverflow.ellipsis),
            ),
            Container(
                decoration: BoxDecoration(),
                width: double.infinity,
                alignment: Alignment.bottomRight,
                child: const Icon(Icons.arrow_forward_rounded,
                    color: appMainColor)),
          ],
        ),
      ),
    );
  }
}
