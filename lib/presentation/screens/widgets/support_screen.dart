import 'package:flutter/material.dart';
import 'package:task/presentation/screens/widgets/navigate_item.dart';

import '../../../utils/constance.dart';
import '../../../utils/routes.dart';
import '../../../utils/styles.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text(
          'دعم العملاء',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.all( defaultPadding),
            child: Text(
              'جميع المواضيع',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(
            text: "التواصل مع الدعم",
            onTap: () {
              Navigator.pushNamed(context, Routes.connectToSupportScreen);
            },
          ),
          NavigateItem(
            text: "الشكاوي",
            onTap: () {},
          ),
          NavigateItem(
            text: "الاستفسارات",
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all( defaultPadding),
            child: Text(
              'بحاجة لمزيد من المساعدة؟',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(
            text: "الاسئلة الاكثر تداولاً",
            onTap: () {
              Navigator.pushNamed(context, Routes.moreQuestionsScreen);
            },
          ),
        ],
      ),
    );
  }
}
