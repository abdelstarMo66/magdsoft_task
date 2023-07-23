import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';

class Deleted extends StatelessWidget {
  const Deleted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16),
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Column(
        children: [
          Padding(
            padding:
            const EdgeInsets.only(right: 16.0, bottom: 16.0, left: 16.0),
            child: Row(
              children: [
                const Icon(
                  Icons.cancel,
                  color: Color(0xFFEB5757),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  'ملغي',
                  style: StyleManager.titleStyle12.copyWith(
                    color: const Color(0xFFEB5757),
                  ),
                ),
                const Spacer(),
                const Text(
                  '3 أشهر',
                  style: StyleManager.titleStyle12,
                ),
              ],
            ),
          ),
          const Line(),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Color(0xFFF2F2F2),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'جان برجر',
                      style: StyleManager.titleStyle14.copyWith(
                        color: const Color(0xFF4F4F4F),
                      ),
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xFFF2E700),
                          size: 16.0,
                        ),
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xFFF2E700),
                          size: 16.0,
                        ),
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xFFF2E700),
                          size: 16.0,
                        ),
                        const Icon(
                          FontAwesomeIcons.solidStar,
                          color: Color(0xFFF2E700),
                          size: 16.0,
                        ),
                        const Icon(
                          FontAwesomeIcons.starHalfStroke,
                          color: Color(0xFFF2E700),
                          size: 16.0,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '4.3',
                          style: StyleManager.titleStyle10.copyWith(
                            color: const Color(0xFF4F4F4F),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Line(),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 12.0,
                  backgroundColor: const Color(0xFFF2F2F2),
                  child: Text(
                    '1',
                    style: StyleManager.titleStyle12
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const Text(
                  'جان دجاج يجمعنا',
                  style: StyleManager.titleStyle12,
                ),
              ],
            ),
          ),
          CustomButton(
            press: (){
              Navigator.pushNamed(context, Routes.reorderScreen);
            },
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.replay,
                  color: Colors.white,
                  size: 16.0,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  'اعادة طلب',
                  style: StyleManager.titleStyle12,
                )
              ],
            ),
            bgColor: const Color(0xFFEB5757),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            ),
          ),
        ],
      ),
    );
  }
}
