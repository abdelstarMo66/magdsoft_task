import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';
import '../../../utils/routes.dart';
import '../../widgets/custom_container_dotted_border.dart';

class RegisterFormScreen4 extends StatelessWidget {
  const RegisterFormScreen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("صفحة تسجيل كامندوب"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 12.0, horizontal: defaultPadding),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const CustomContainerDottedBorder(label: "صورة للسيارة من الخلف"),
            const CustomContainerDottedBorder(label: "صورة من بطاقة الهوية الوطنية/ هوية المقيم."),
            const CustomContainerDottedBorder(label: "صورة من رخصة القيادة"),
            const CustomContainerDottedBorder(label: "صورة للسيارة من الامام"),
            const CustomContainerDottedBorder(label: "استمارة السيارة"),
            const SizedBox(
              height: 40.0,
            ),
            CustomButton(
              press: () {
                Navigator.pushNamed(context, Routes.registerFormScreen5);
              },
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
