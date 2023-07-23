import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final Widget widget;
  final Color bgColor;
  final Function()? press;
  final BorderRadiusGeometry? borderRadius;
  const CustomButton({
    Key? key,
    required this.widget,
    required this.bgColor,
    this.press,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: ElevatedButton(
        onPressed: press ?? () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(8.0),
          ),
          elevation: 0.0,
        ),
        child: widget,
      ),
    );
  }
}

class CustomTalapatButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;
  final Function() press;
  final bool unSelected;
  const CustomTalapatButton({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.press,
    this.textColor = Colors.white,
    this.unSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.0,
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(44.0),
            ),
            elevation: 0.0,
            shadowColor: Colors.transparent,
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0)),
        child: Text(
          text,
          style: StyleManager.titleStyle12.copyWith(color: textColor),
        ),
      ),
    );
  }
}
