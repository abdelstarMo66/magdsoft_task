import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class BalanceSheet extends StatelessWidget {
  const BalanceSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(
        width: 1.0,
        color: Color(0xFF828282),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: 12.0),
          child: Row(
            children: [
              const Text(
                'اضافة الرصيد',
                style: StyleManager.titleStyle12,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        const Line(),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'طريقة السداد',
                style: StyleManager.titleStyle10,
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                children: [
                  Image.asset("assets/images/visa.png"),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Text(
                    '2017****',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Text(
                        'تغيير',
                        style: StyleManager.titleStyle10.copyWith(
                            color: const Color(0xFFE60023),
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 16.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Line(),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'ادخل المبلغ المراد اضافته الي رصيدك',
                style: StyleManager.titleStyle10,
              ),
              const SizedBox(
                height: 12.0,
              ),
              TextFormField(
                controller: controller,
                validator: (val) {
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: border,
                  focusedBorder: border,
                  enabledBorder: border,
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 10.0),
                  label: Text(
                    '0.00',
                    style:
                        StyleManager.titleStyle12.copyWith(color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 24.0,
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: const CustomButton(
              widget: Text(
                "سدد",
                style: StyleManager.titleStyle12,
              ),
              bgColor: Color(0xFF828282),),
        ),
        const SizedBox(
          height: 70.0,
        ),
      ],
    );
  }
}
