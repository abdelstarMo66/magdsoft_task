import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/styles.dart';

class Ordering extends StatelessWidget {
  const Ordering({Key? key}) : super(key: key);

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
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 20.0,
                  backgroundColor: Colors.lightBlue,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Text(
                  'اسواق التميمي',
                  style: StyleManager.titleStyle14.copyWith(
                    color: const Color(0xFF4F4F4F),
                  ),
                ),
                const Spacer(),
                Text(
                  '#24525666',
                  style: StyleManager.titleStyle10.copyWith(
                    color: const Color(0xFF333333),
                  ),
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
                  'خبز بالجبن صغير - 6 قطع',
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
              children: const [
                Icon(
                  Icons.access_time,
                  color: Color(0xFF828282),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'يتم التوصيل خلال ساعة واحدة',
                  style: StyleManager.titleStyle10,
                ),
                Spacer(),
                Icon(
                  Icons.money,
                  color: Color(0xFF828282),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'سعر التوصيل 18 ر.س',
                  style: StyleManager.titleStyle10,
                ),
              ],
            ),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            child: Row(
              children: [
                CustomTalapatButton(
                  text: "متوجه لأستلام",
                  bgColor: const Color(0xFF27AE60),
                  press: () {},
                ),
                const Spacer(),
                CustomTalapatButton(
                  text: "تنبيه",
                  bgColor: const Color(0xFFEB5757),
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
