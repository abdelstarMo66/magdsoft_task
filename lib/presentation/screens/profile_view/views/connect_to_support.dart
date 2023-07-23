import 'package:flutter/material.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';
import 'navigate_item.dart';

class ConnectToSupport extends StatelessWidget {
  const ConnectToSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'التواصل مع الدعم',
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
              'المشاكل الشائعة',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(
            text: "الطلب الناقص",
            onTap: () {},
          ),
          NavigateItem(
            text: "لم يتم توصيل الطلب",
            onTap: () {},
          ),
          NavigateItem(
            text: "الطلب الفاسد",
            onTap: () {},
          ),
          NavigateItem(
            text: "الطلب المتأخر",
            onTap: () {},
          ),
          NavigateItem(
            text: "المندوب لا يستجيب",
            onTap: () {},
          ),
          NavigateItem(
            text: "المندوب اصدر فاتورة خاطئة",
            onTap: () {},
          ),
          NavigateItem(
            text: "المندوب غير محترف",
            onTap: () {},
          ),
          NavigateItem(
            text: "تم خصم المبغ مني مرتين",
            onTap: () {},
          ),
          NavigateItem(
            text: "لم يتم اضافة كوبون للطلب",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
