import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/presentation/screens/profile_view/views/appbar.dart';
import 'package:task/presentation/screens/profile_view/views/profile_list_items.dart';
import 'package:task/utils/constance.dart';
import '../../../utils/styles.dart';

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
              onTap: () {},
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
                      style: StyleManager.titleStyle14
                          .copyWith(color: const Color(0xFFEB5757)),
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
