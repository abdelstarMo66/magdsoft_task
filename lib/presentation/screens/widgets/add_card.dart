import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';

import '../../../utils/constance.dart';
import '../../../utils/styles.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController cardNumber = TextEditingController();
    TextEditingController cnn = TextEditingController();
    TextEditingController name = TextEditingController();
    TextEditingController expireDate = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'طريقة السداد',
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 31.0),
        children: [
          const SizedBox(
            height: 31.0,
          ),
          CustomTextForm(
            controller: cardNumber,
            inputType: TextInputType.number,
            label: "رقم البطاقة",
            prefixIcon: const Icon(
              Icons.credit_card_rounded,
              color: Color(0xFF828282),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              Expanded(child: CustomTextForm(controller: expireDate, inputType: TextInputType.number, label: "انتهاء الصلاحية", suffixIcon: const Icon(Icons.help_outlined,color: Color(0xFF828282),),),),
              const SizedBox(width: 12.0,),
              Expanded(child: CustomTextForm(controller: cnn, inputType: TextInputType.number, label: "رمز الحماية",suffixIcon: const Icon(Icons.help_outlined,color: Color(0xFF828282),),),),
            ],
          ),
          const SizedBox(height: 12.0,),
          CustomTextForm(controller: name, inputType: TextInputType.name, label: "اسم حامل البطاقة"),
          const SizedBox(height: 31.0,),
          const SizedBox(width: double.infinity,child: CustomButton(widget: Text(
            'حفظ',
            style: StyleManager.titleStyle14,
          ), bgColor: Color(0xFF828282),),)
        ],
      ),
    );
  }
}

class CustomTextForm extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType inputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String label;
  const CustomTextForm({
    Key? key,
    required this.controller,
    required this.inputType,
    this.prefixIcon,
    this.suffixIcon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 1.0,
        color: Color(0xFF828282),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: StyleManager.titleStyle12,
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextFormField(
          controller: controller,
          validator: (val) {
            return null;
          },
          keyboardType: inputType,
          decoration: InputDecoration(
            border: border,
            focusedBorder: border,
            enabledBorder: border,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          ),
        ),
      ],
    );
  }
}
