import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class DriverAppbar extends StatelessWidget {
  const DriverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: 12.0),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 37.0,
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1689835751~exp=1689836351~hmac=e30349f672bc5fc0b6d80718d2f6da8a1e38b8b8813ee6d8e330e30df079944f"),
              ),
              const SizedBox(
                width: 19.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'اسامة الحربي',
                        style: StyleManager.titleStyle14
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      SvgPicture.asset("assets/icons/blue_mark.svg"),
                    ],
                  ),
                  const SizedBox(
                    height: 11.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 16.0,
                        color: Color(0xFFF1EA30),
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 16.0,
                        color: Color(0xFFF1EA30),
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 16.0,
                        color: Color(0xFFF1EA30),
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 16.0,
                        color: Color(0xFFF1EA30),
                      ),
                      Icon(
                        FontAwesomeIcons.solidStar,
                        size: 16.0,
                        color: Color(0xFFF1EA30),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.badge_outlined,
                        color: Color(0xFF2F80ED),
                        size: 20.0,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        'اظهار هوية المندوب',
                        style: StyleManager.titleStyle10.copyWith(
                          color: const Color(0xFF2F80ED),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'نسبة قبول الطلبات',
                        style: StyleManager.titleStyle10.copyWith(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF5F5F5F),
                        ),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      const Icon(
                        Icons.info_rounded,
                        color: Color(0xFF5F5F5F),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    children: const [
                      Icon(Icons.av_timer),
                      SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        '%67',
                        style: TextStyle(
                          color: Color(0xFFEB5757),
                          fontSize: 20,
                          fontFamily: 'Alexandria',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 31.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'الطلبات الموصلة',
                    style: StyleManager.titleStyle12
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    '0 طلب',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                children: [
                  Text(
                    'اجمالي الايرادات',
                    style: StyleManager.titleStyle12
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  const Text(
                    '0.0 ر.س',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Alexandria',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
