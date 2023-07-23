import 'package:flutter/material.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

import 'navigate_item.dart';

class MoreQuestionsScreen extends StatelessWidget {
  const MoreQuestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'الأسئلة الأكثر تداولاً',
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'الأسئلة المتكررة',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(text: "من اين احدث موقعي؟", onTap: () {}),
          NavigateItem(text: "كيف انضم الي طاير؟", onTap: () {}),
          NavigateItem(text: "لماذا لم تصلني العروض ؟", onTap: () {}),
          NavigateItem(text: "كيف اتتبع المندوب؟", onTap: () {}),
          NavigateItem(text: "كيف ارفع شكوي؟", onTap: () {}),
          NavigateItem(text: "كيف اغير المندوب؟", onTap: () {}),
          NavigateItem(text: "كيف اقوم بالغاء الطلب؟", onTap: () {}),
          NavigateItem(text: "من اين اغير لغة التطبيق؟", onTap: () {}),
          NavigateItem(text: "اين اجد طلباتي السابقة؟", onTap: () {}),
          NavigateItem(text: "ما هي طرق الدفع المتاحة؟", onTap: () {}),
        ],
      ),
    );
  }
}
