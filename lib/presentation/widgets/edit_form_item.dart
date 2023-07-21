import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class EditFormItem extends StatelessWidget {
  final String text;
  final TextInputType inputType;
  final TextEditingController editController;

  const EditFormItem({Key? key,required this.text,required this.inputType,required this.editController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return           Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: StyleManager.titleStyle10,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 12.0,bottom: 16.0),
          child: TextFormField(
            keyboardType: inputType,
            controller: editController,
            decoration: const InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0xFFE0E0E0),
                  )
              ),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0xFFE0E0E0),
                  )
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Color(0xFFE0E0E0),
                  )
              ),
            ),
            style: StyleManager.titleStyle14.copyWith(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 18.0,),
      ],
    );
  }
}
