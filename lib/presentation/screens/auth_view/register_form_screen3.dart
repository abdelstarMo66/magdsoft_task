import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/customFormItem.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';

class RegisterFormScreen3 extends StatelessWidget {
  const RegisterFormScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController accountNumberController = TextEditingController();
    TextEditingController addressController = TextEditingController();
    TextEditingController locationController = TextEditingController();
    TextEditingController cityController = TextEditingController();

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
              text: "رقم الحساب البنكي",
              inputType: TextInputType.name,
              editController: accountNumberController,
              prefixIcon: const Icon(
                Icons.credit_card,
                color: Colors.black,
              ),
            ),
            CustomFormItem(
              text: "العنوان كامل",
              inputType: TextInputType.emailAddress,
              editController: addressController,
              prefixIcon: const Icon(
                Icons.location_on_outlined,
                color: Colors.black,
              ),
            ),
            CustomFormItem(
              text: "المنطقة التي اعمل بها",
              inputType: TextInputType.phone,
              editController: locationController,
              prefixIcon: const Icon(
                Icons.keyboard_arrow_down,
                size: 30.0,
                color: Colors.black,
              ),
            ),
            CustomFormItem(
              text: "المدينة التي اعمل بها",
              inputType: TextInputType.text,
              editController: cityController,
              prefixIcon: const Icon(
                Icons.keyboard_arrow_down,
                size: 30.0,
                color: Colors.black,
              ),
            ),
            CustomButton(
              press: (){
                Navigator.pushNamed(context, Routes.registerFormScreen4);
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
