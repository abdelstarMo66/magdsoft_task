import 'package:flutter/material.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class NavigateItem extends StatelessWidget {
  final String text;
  final Function() onTap;
  const NavigateItem({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          children: [
            Text(
              text,
              style: StyleManager.titleStyle14,
            ),
            const Spacer(),
            const SizedBox(
              height: 40.5,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
