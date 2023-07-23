import 'package:flutter/material.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';
import 'navigate_item.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'اعدادات',
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'اعدادات عامة',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(
            text: "نغمة التنبية",
            onTap: () {},
          ),
          NavigateItem(
            text: "قائمة الشكاوي المقدمة",
            onTap: () {
              Navigator.pushNamed(context, Routes.listComplaintsSubmitScreen);
            },
          ),
          NavigateItem(
            text: "الاستفسارات",
            onTap: () {},
          ),
          NavigateItem(
            text: "تعديل البروفايل",
            onTap: () {
              Navigator.pushNamed(context, Routes.editProfileScreen);
            },
          ),
          NavigateItem(
            text: "اعدادات اللغة",
            onTap: () {
              Navigator.pushNamed(context, Routes.languageSettingsScreen);
            },
          ),
          NavigateItem(
            text: "شروط الاستخدام",
            onTap: () {
              Navigator.pushNamed(context, Routes.termsOfUseScreen);
            },
          ),
          NavigateItem(
            text: "شهادة ضريبة القيمة المضافة",
            onTap: () {
              Navigator.pushNamed(context, Routes.valueAddedTaxCertificateScreen);
            },
          ),
          NavigateItem(
            text: "سياسة الخصوصية",
            onTap: () {
              Navigator.pushNamed(context, Routes.privacyPolicyScreen);
            },
          ),
          NavigateItem(
            text: "قيم التطبيق",
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'مساعدة',
              style: StyleManager.titleStyle14
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ),
          NavigateItem(
            text: "نبذة عن التطبيق",
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              'رقم الاصدار 1.0',
              style: StyleManager.titleStyle12.copyWith(color: const Color(0xFF828282)),
            ),
          ),
        ],
      ),
    );
  }
}
