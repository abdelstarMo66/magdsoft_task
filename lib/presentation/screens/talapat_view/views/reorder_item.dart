import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';

class ReorderItem extends StatelessWidget {
  const ReorderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          decoration: const ShapeDecoration(
            color: Color(0x7FFDE6E9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'تم الغاء الطلب',
                style: StyleManager.titleStyle12.copyWith(
                  color: const Color(0xFFE60023),
                ),
              ),
              const SizedBox(width: 12),
              const Icon(
                Icons.remove_shopping_cart_outlined,
                color: Color(0xFFE60023),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(
              top: 20, bottom: 16, right: 23.0, left: 23.0),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'تفاصيل الطلب',
                    style: StyleManager.titleStyle12.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8, vertical: 4),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF2F2F2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                    child: Text(
                      'سلعة',
                      style: StyleManager.titleStyle10.copyWith(
                        color: const Color(0xFF4F4F4F),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    '#25537546',
                    style: StyleManager.titleStyle14.copyWith(
                      color: const Color(0xFF828282),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 12.0,
                    backgroundColor: const Color(0xFFF2F2F2),
                    child: Text(
                      '1',
                      style: StyleManager.titleStyle12
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  const Text(
                    'جان دجاج يجمعنا',
                    style: StyleManager.titleStyle12,
                  ),
                  const Spacer(),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '95.00 ',
                          style: StyleManager.titleStyle14
                              .copyWith(fontWeight: FontWeight.w500),
                        ),
                        TextSpan(
                          text: 'ر.س',
                          style: StyleManager.titleStyle10.copyWith(
                            color: const Color(0xFF4F4F4F),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24.0,
              ),
              CustomButton(
                press: () {
                  Navigator.pushNamed(context, Routes.reorderDetailsScreen);
                },
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.replay,
                      color: Colors.black,
                      size: 16.0,
                    ),
                    const SizedBox(
                      width: 4.0,
                    ),
                    Text(
                      'اعادة طلب',
                      style: StyleManager.titleStyle12
                          .copyWith(color: Colors.black),
                    )
                  ],
                ),
                bgColor: const Color(0xFFFAB74C),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
