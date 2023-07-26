import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class CustomFormItem extends StatelessWidget {
  final String text;
  final TextInputType inputType;
  final TextEditingController editController;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final void Function()? onTap;

  const CustomFormItem({
    Key? key,
    required this.text,
    required this.inputType,
    required this.editController,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OutlineInputBorder inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(width: 1.0, color: Colors.black),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: StyleManager.titleStyle12,
        ),
        const SizedBox(
          height: 12.0,
        ),
        TextFormField(
          keyboardType: inputType,
          controller: editController,
          decoration: InputDecoration(
            border: inputBorder,
            enabledBorder: inputBorder,
            focusedBorder: inputBorder,
            hintText: hintText,
            hintStyle: StyleManager.titleStyle12.copyWith(
              color: const Color(0xFF828282),
            ),
            contentPadding: const EdgeInsets.all(16.0),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
          ),
          onTap: onTap,
          style:
              StyleManager.titleStyle14.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 16.0,
        ),
      ],
    );
  }
}
