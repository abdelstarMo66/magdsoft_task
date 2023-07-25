import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

import '../../../../utils/routes.dart';
import '../../../widgets/custom_button.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      backgroundColor: Colors.white,
      onClosing: () {},
      enableDrag: false,
      builder: (BuildContext context) {
        return SizedBox(
          height: 175.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 8, bottom: 20.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 32,
                      height: 4,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFCACCCB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Line(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: defaultPadding),
                child: Row(
                  children: [
                    Text(
                      'المجموع',
                      style: StyleManager.titleStyle14.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFFE60023),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    const Text(
                      '(شامل ضريبة القيمة المضافة)',
                      style: StyleManager.titleStyle10,
                    ),
                    const Spacer(),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: ' 114.0 ر.س',
                            style: StyleManager.titleStyle12.copyWith(
                              color: const Color(0xFF4F4F4F),
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          TextSpan(
                            text: ' 104.0 ر.س',
                            style: StyleManager.titleStyle14.copyWith(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFE60023),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: CustomButton(
                  widget: const Text(
                    'ارسال الطلب',
                    style: StyleManager.titleStyle16,
                  ),
                  bgColor: const Color(0xFFE60023),
                  borderRadius: BorderRadius.zero,
                  press: (){
                    Navigator.pushNamed(context, Routes.orderProcessScreen);
                  },
                ),
              ),
              const SizedBox(
                height: 18.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
