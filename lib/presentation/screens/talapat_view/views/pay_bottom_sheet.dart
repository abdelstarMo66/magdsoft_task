import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

payBottomSheet(context) => showModalBottomSheet(
      context: context,
      builder: (context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: 12.0),
            child: Row(
              children: [
                Text(
                  'فاتورة الدفع',
                  style: StyleManager.titleStyle12.copyWith(
                    color: const Color(0xFF4F4F4F),
                  ),
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
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            'طريقة السداد',
            style: StyleManager.titleStyle10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: 12.0),
            child: Row(
              children: [
                Image.asset("assets/images/visa.png"),
                const SizedBox(
                  width: 12.0,
                ),
                const Text(
                  '2017****',
                  style: StyleManager.titleStyle16,
                ),
                const Spacer(),
                Text(
                  'تغيير',
                  style: StyleManager.titleStyle10.copyWith(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFFE60023),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 8.0),
                  height: 40.5,
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20.0,
                    color: Color(0xFFE60023),
                  ),
                ),
              ],
            ),
          ),
          const Line(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Text(
                        'تكلفة المشتريات',
                        style: StyleManager.titleStyle10
                            .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        '5 ر.س',
                        style: StyleManager.titleStyle12
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const Line(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Text(
                        'تكلفة التوصيل',
                        style: StyleManager.titleStyle10
                            .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        '20 ر.س',
                        style: StyleManager.titleStyle12
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const Line(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Text(
                        'الخصم',
                        style: StyleManager.titleStyle10
                            .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        '0 ر.س',
                        style: StyleManager.titleStyle12
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const Line(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    children: [
                      Text(
                        'المجموع الجزئي',
                        style: StyleManager.titleStyle10
                            .copyWith(color: Colors.black),
                      ),
                      const Spacer(),
                      Text(
                        '25 ر.س',
                        style: StyleManager.titleStyle12
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                const Line(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'المجموع الكلي',
                            style: StyleManager.titleStyle14.copyWith(
                              color: const Color(0xFFE60023),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8.0,
                          ),
                          const Text(
                            'الرقم الضريبي 328762488642',
                            style: StyleManager.titleStyle10,
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '25 ر.س',
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
            height: 56.0,
            child: CustomButton(
              widget: Text(
                'سدد الأن',
                style: StyleManager.titleStyle16.copyWith(color: Colors.white),
              ),
              bgColor: const Color(0xFFE60023),
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
          const SizedBox(
            height: 18.0,
          )
        ],
      ),
    );
