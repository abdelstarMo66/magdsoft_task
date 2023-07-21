import 'package:flutter/material.dart';

import '../../utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Widget widget;
  final Color bgColor;
  final Function()? press;
  const CustomButton(
      {Key? key, required this.widget, required this.bgColor, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: ElevatedButton(
        onPressed: press ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 0.0,
        ),
        child: widget,
      ),
    );
  }
}
