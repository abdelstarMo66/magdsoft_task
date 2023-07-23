import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class OrderPayment extends StatelessWidget {
  const OrderPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Text(
            'طريقة الدفع',
            style: StyleManager.titleStyle12.copyWith(
              color: const Color(0xFF4F4F4F),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.credit_card_rounded,
                color: Color(0xFFF2994A),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'بطاقة مدي البنكية  ',
                      style: StyleManager.titleStyle12.copyWith(
                        color: const Color(0xFF333333),
                      ),
                    ),
                    const TextSpan(
                      text: '(بطاقة إئتمانية)',
                      style: StyleManager.titleStyle10,
                    ),
                  ],
                ),
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
      ],
    );
  }
}
