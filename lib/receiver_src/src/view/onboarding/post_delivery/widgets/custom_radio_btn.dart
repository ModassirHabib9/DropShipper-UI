import 'package:dropshpper_app/receiver_src/src/utils/colors_resource_receiver.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyRadioOption<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final String label;

  final ValueChanged<T?> onChanged;

  const MyRadioOption({
    required this.value,
    required this.groupValue,
    required this.label,
    required this.onChanged,
  });

  Widget _buildLabel() {
    final bool isSelected = value == groupValue;

    return Container(
      width: 42.w,
      height: 42.h,
      decoration: ShapeDecoration(
        shape: CircleBorder(
          side: BorderSide(
            color: colorBlack,
          ),
        ),
        color: isSelected ? appMainColor : colorWhite,
      ),
      child: Center(
        child: Text(
          value.toString(),
          style: TextStyle(
            color: isSelected ? colorWhite : colorTeal,
            fontSize: 12.sp,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: InkWell(
        onTap: () => onChanged(value),
        splashColor: colorTeal.withOpacity(0.5),
        child: Row(
          children: [
            _buildLabel(),
          ],
        ),
      ),
    );
  }
}
