import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/utils/styles.dart';

import '../../../widgets/line.dart';

class RateItem extends StatelessWidget {
  const RateItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(vertical: 6.0,horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 13.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 28.0,
                  backgroundColor: Color(0xFFD9D9D9),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'احمد',
                      style: StyleManager.titleStyle12,
                    ),
                    const Text(
                      '3 اشهر',
                      style: StyleManager.titleStyle10,
                    ),
                  ],
                ),
                const Spacer(),
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
                  width: 8.0,
                ),
                Text(
                  '5',
                  style: StyleManager.titleStyle12.copyWith(
                    color: const Color(0xFF828282),
                  ),
                ),
                const SizedBox(
                  width: 12.0,
                ),
                const Icon(Icons.more_vert_outlined,color: Colors.black,),
              ],
            ),
          ),
          const Line(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
            child: Text(
              'ممتاز',
              style: StyleManager.titleStyle12,
            ),
          ),
        ],
      ),
    );
  }
}
