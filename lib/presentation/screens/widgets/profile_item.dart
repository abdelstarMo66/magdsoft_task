import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/utils/constance.dart';

import '../../../utils/styles.dart';
import '../../widgets/line.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final Widget widget;
  final String icon;
  const ProfileItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 8.0),
          child: Row(
            children: [
              SvgPicture.asset(icon),
              const SizedBox(
                width: 11.0,
              ),
              Text(
                text,
                style:
                    StyleManager.titleStyle14,
              ),
              const Spacer(),
              widget,
            ],
          ),
        ),
        const Line(),
      ],
    );
  }
}
