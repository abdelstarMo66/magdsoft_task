import 'package:flutter/material.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

import '../../widgets/custom_button.dart';

class RegisterFormScreen5 extends StatefulWidget {
  const RegisterFormScreen5({Key? key}) : super(key: key);

  @override
  State<RegisterFormScreen5> createState() => _RegisterFormScreen5State();
}

class _RegisterFormScreen5State extends State<RegisterFormScreen5> {
  bool? value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحة تسجيل كامندوب"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'ملاحظة هامة',
                style: StyleManager.titleStyle16.copyWith(
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              'يتوجب عليك قبل التوثيق من ملف البروفايل الخاص بك ',
              textAlign: TextAlign.right,
              style: StyleManager.titleStyle12.copyWith(
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Text(
              '1- ان تكون الصورة الشخصية واضحة بدون نظارات  شمسية \nو تظهر الوجه كامل.\n2- الاسم الثنائي لك كما هو ظاهر بالهوية الوطنية.\nمع العلم انه يتم النظر لأي طلب لا يحقق الشروط المذكورة اعلاه.',
              textAlign: TextAlign.right,
              style: StyleManager.titleStyle12.copyWith(
                color: const Color(0xFF333333),
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'اقرار و موافقة',
                style: StyleManager.titleStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF333333),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(
                  value: value,
                  onChanged: (val) {
                    setState(() {
                      value = val;
                    });
                  },
                ),
                const Text(
                  'اقر بأنني قد قرأت الشروط المذكورة و وافقت عليها.',
                  style: StyleManager.titleStyle12,
                ),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            CustomButton(
              press: () {},
              widget: Text(
                'التالي',
                style: StyleManager.titleStyle14.copyWith(
                  color: const Color(0xFFFCFDFE),
                ),
              ),
              bgColor: const Color(0xFF969FA4),
            ),
          ],
        ),
      ),
    );
  }
}
