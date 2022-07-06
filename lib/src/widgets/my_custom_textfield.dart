import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCustomTextField extends StatelessWidget {
  final String hint;
  final TextInputType? kry;
  final double? width;
  final double? hight;
  final int? maxLines;
  // final Function? onChange;
  // final Function validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  // final Function onTap;
  final TextEditingController? controller;
  // final Color borderColor;
  // final bool obscureText;
  // final InputDecoration decoration;
  // final Function(String) validator;

  // final MaskFilter maskFilter;
  MyCustomTextField({
    @override required this.hint,
    this.width,
    // this.onChange,
    this.kry,
    // required this.validator,
    this.suffixIcon,
    this.prefixIcon,
    // required this.onTap,
    this.controller,
    this.hight,
    this.maxLines,
    // required this.borderColor,
    // required this.obscureText,
    /*required this.decoration*/
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: hight,
      child: TextFormField(
        // onChanged: onChange!,
        controller: controller,
        maxLines: maxLines,
        // controller: callback,
        // autovalidate: true,
        // obscureText: obscureText,
        // validator: validator(),
        // inputFormatters: inputFormatters,
        keyboardType: kry,

        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(12, 10, 0, 10),
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFFF0F0F0),
          prefixIcon: prefixIcon,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Color(0xFFF0F0F0), width: 2)),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(240, 240, 240, 100), width: 2)),
        ),
        // inputFormatters: [phoneFormatter],
      ),
    );
  }
}
