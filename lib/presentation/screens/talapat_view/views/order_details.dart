import 'package:flutter/material.dart';
import 'package:task/presentation/screens/talapat_view/views/counter_order_details.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            children: [
              Text(
                'تفاصيل طلبك',
                style: StyleManager.titleStyle12.copyWith(
                  color: const Color(0xFF4F4F4F),
                ),
              ),
              const Spacer(),
              Text(
                'أضافة مزيد',
                style: StyleManager.titleStyle10.copyWith(
                  color: const Color(0xFFE60023),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Container(
                decoration: const ShapeDecoration(
                  color: Color(0xFFE60023),
                  shape: CircleBorder(),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 12.0),
                      child: Text(
                        'جان دجاج يجمعنا',
                        style: StyleManager.titleStyle12.copyWith(
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF333333),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const CounterOrderDetails(),
                  ],
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              const Line(),
              Padding(
                padding: const EdgeInsets.only(
                    top: 12.0, left: 10.0, right: 10.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 8),
                  decoration: ShapeDecoration(
                    color: const Color(0x7FFDE6E9),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Color(0xFFE60023),
                      ),
                      Text(
                        'اضف ملاحظتك',
                        style: StyleManager.titleStyle12.copyWith(
                          color: const Color(0xFFE60023),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
