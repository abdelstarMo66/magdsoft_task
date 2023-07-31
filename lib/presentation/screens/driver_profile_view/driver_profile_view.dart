import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/presentation/screens/driver_profile_view/views/driver_appbar.dart';
import 'package:task/presentation/screens/driver_profile_view/views/driver_profile_list_items.dart';
import 'package:task/utils/constance.dart';
import '../../../utils/styles.dart';

class DriverProfileScreen extends StatelessWidget {
  const DriverProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const SizedBox(height: 12.0,),
            const DriverAppbar(),
            const DriverProfileListItems(),
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
