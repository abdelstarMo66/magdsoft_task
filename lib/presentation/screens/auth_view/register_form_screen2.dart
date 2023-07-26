import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';
import '../../../utils/routes.dart';
import '../../widgets/customFormItem.dart';

class RegisterFormScreen2 extends StatelessWidget {
  const RegisterFormScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController carTypeController = TextEditingController();
    TextEditingController carModelController = TextEditingController();
    TextEditingController carMadeDateController = TextEditingController();
    TextEditingController carNumbersController = TextEditingController();
    TextEditingController carAlphasController = TextEditingController();
    TextEditingController carSerialNumberController = TextEditingController();

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
              text: "نوع السيارة",
              inputType: TextInputType.text,
              editController: carTypeController,
              hintText: "اختر",
              prefixIcon: const Icon(
                Icons.keyboard_arrow_down,
                size: 28.0,
                color: Colors.black,
              ),

            ),
            CustomFormItem(
              prefixIcon: const Icon(
                Icons.keyboard_arrow_down,
                size: 28.0,
                color: Colors.black,
              ),
              text: "موديل السيارة",
              inputType: TextInputType.text,
              editController: carModelController,
              hintText: "اختر",
            ),
            CustomFormItem(
              prefixIcon: const Icon(
                Icons.keyboard_arrow_down,
                size: 28.0,
                color: Colors.black,
              ),
              text: "سنة التصنيع",
              inputType: TextInputType.number,
              editController: carMadeDateController,
              hintText: "اختر",
            ),
            Row(
              children: [
                Expanded(
                  child: CustomFormItem(
                    text: "اعداد",
                    inputType: TextInputType.number,
                    editController: carNumbersController,
                    hintText: "1234",
                  ),
                ),
                const SizedBox(width: 16.0,),
                Expanded(
                  child: CustomFormItem(
                    text: "حروف",
                    inputType: TextInputType.text,
                    editController: carAlphasController,
                    hintText: "ف ث ص",
                  ),
                ),
              ],
            ),
            CustomFormItem(
              text: "الرقم التسلسلي للسيارة",
              inputType: TextInputType.number,
              editController: carSerialNumberController,
              hintText: "234567892",
            ),
            const SizedBox(
              height: 40.0,
            ),
            CustomButton(
              press: (){
                Navigator.pushNamed(context, Routes.registerFormScreen3);
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
