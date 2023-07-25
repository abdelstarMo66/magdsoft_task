import 'package:flutter/material.dart';
import 'package:task/presentation/screens/talapat_view/views/order_add_address.dart';
import 'package:task/utils/styles.dart';

import '../../../utils/constance.dart';
import 'views/custom_bottom_sheet.dart';
import 'views/order_coupons.dart';
import 'views/order_details.dart';
import 'views/order_payment.dart';

class NewOrder extends StatelessWidget {
  const NewOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              'طلب جديد',
              style: StyleManager.titleStyle10.copyWith(
                fontWeight: FontWeight.w500,
                color: const Color(0xFFBDBDBD),
              ),
            ),
            const Text('جان برجر'),
          ],
        ),
        elevation: 0.0,
      ),
      bottomSheet: const CustomBottomSheet(),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        children: const [
          OrderDetails(),
          OrderAddAddress(),
          OrderPayment(),
          OrderCoupons(),
          SizedBox(
            height: 250.0,
          ),
        ],
      ),
    );
  }
}
