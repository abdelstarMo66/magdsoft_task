import 'package:flutter/material.dart';
import 'package:task/presentation/screens/profile_view/views/navigate_item.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class DriverSupportScreen extends StatelessWidget {
  const DriverSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text(
          'دعم المناديب',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'جميع المواضيع',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          SizedBox(
            height: 90.0,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white),
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 14.0),
                child: Column(
                  children: [
                    Image.asset("assets/images/box.png"),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      'الطلب',
                      style: StyleManager.titleStyle10.copyWith(
                        color: const Color(0xFF333333),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 8.0,
              ),
              itemCount: 8,
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'تذاكري',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
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
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'المقالات الشائعة',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(
            text: "التعويض",
            onTap: () {},
          ),
          NavigateItem(
            text: "المشاكل التقنية",
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'بحاجة لمزيد من المساعدة؟',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(
            text: "عن طايرً",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
