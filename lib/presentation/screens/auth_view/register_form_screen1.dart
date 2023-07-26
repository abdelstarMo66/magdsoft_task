import 'package:country_picker/country_picker.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

import '../../../utils/routes.dart';
import '../../widgets/customFormItem.dart';
import '../../widgets/custom_container_dotted_border.dart';

class RegisterFormScreen1 extends StatelessWidget {
  const RegisterFormScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController idController = TextEditingController();
    TextEditingController bdController = TextEditingController();
    TextEditingController nationalityController = TextEditingController();

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
            CustomFormItem(
              text: "الأسم كامل",
              inputType: TextInputType.name,
              editController: nameController,
              hintText: "محمد علي",
            ),
            CustomFormItem(
              text: "البريد الالكتروني",
              inputType: TextInputType.emailAddress,
              editController: emailController,
              hintText: "mo@gmail.com",
            ),
            CustomFormItem(
              text: "رقم الهاتف",
              inputType: TextInputType.phone,
              editController: phoneController,
            ),
            CustomFormItem(
              text: "الجنسية",
              inputType: TextInputType.text,
              editController: nationalityController,
              prefixIcon: const Icon(
                Icons.keyboard_arrow_down,
                size: 30.0,
                color: Colors.black,
              ),
              onTap: () {
                showCountryPicker(
                  context: context,
                  showPhoneCode: false,
                  showSearch: false,
                  useSafeArea: true,
                  countryListTheme: CountryListThemeData(
                    bottomSheetHeight: MediaQuery.of(context).size.height / 2,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  onSelect: (Country country) {
                    nationalityController.text = country.name.toString();
                  },
                );
              },
            ),
            CustomFormItem(
              text: "ادخل رقم الهوية",
              inputType: TextInputType.number,
              editController: idController,
              hintText: "1xxxxxxxxxxxxxxxx",
            ),
            CustomFormItem(
              text: "التاريخ",
              inputType: TextInputType.datetime,
              editController: bdController,
              hintText: "1/3/2000",
              suffixIcon: const Icon(Icons.calendar_today),
            ),
            CustomContainerDottedBorder(
              widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: Color(0xFF2F80ED),
                    size: 20.0,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'قم برفع صورتك الشخصية',
                    style: StyleManager.titleStyle12.copyWith(
                      color: const Color(0xFF2F80ED),
                    ),
                  ),
                ],
              ),
              label: "الصورة الشخصية",
            ),
            const SizedBox(
              height: 40.0,
            ),
            CustomButton(
              press: () {
                Navigator.pushNamed(context, Routes.registerFormScreen2);
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
