import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/constance.dart';
import '../../../utils/styles.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: 12.0),
      child: Row(
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
                    style: StyleManager.titleStyle14.copyWith(fontWeight: FontWeight.w500),
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
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
