import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/presentation/screens/widgets/appbar.dart';
import 'package:task/presentation/screens/widgets/profile_list_items.dart';
import 'package:task/utils/constance.dart';

import '../../utils/styles.dart';
import 'widgets/profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const Appbar(),
            const ProfileListItems(),
            InkWell(
              onTap: (){},
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/exit.svg"),
                    const SizedBox(
                      width: 11.0,
                    ),
                    Text(
                      'تسجيل الخروج',
                      style: StyleManager.titleStyle14.copyWith(color: Color(0xFFEB5757)),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
