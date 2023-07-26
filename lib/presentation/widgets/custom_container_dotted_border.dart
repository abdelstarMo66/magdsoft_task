import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class CustomContainerDottedBorder extends StatelessWidget {
  final String label;
  final Widget? widget;
  const CustomContainerDottedBorder({
    Key? key,
    required this.label,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: StyleManager.titleStyle12,
        ),
        const SizedBox(
          height: 12.0,
        ),
        Container(
          color: const Color(0xFFE9F2FF),
          child: DottedBorder(
            padding: const EdgeInsets.all(27.0),
            color: const Color(0xFF2F80ED),
            borderType: BorderType.Rect,
            strokeWidth: 0.5,
            child: widget ??
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Color(0xFF2F80ED),
                      size: 20.0,
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'اختيار صورة',
                      style: StyleManager.titleStyle12.copyWith(
                        color: const Color(0xFF2F80ED),
                      ),
                    ),
                  ],
                ),
          ),
        ),
        SizedBox(height: 16.0,),
      ],
    );
  }
}
