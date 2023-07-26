import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/controller/talapat_cubit/talapat_cubit.dart';
import 'package:task/presentation/screens/talapat_view/views/order_address.dart';
import 'package:task/presentation/screens/talapat_view/views/order_coupons.dart';
import 'package:task/presentation/screens/talapat_view/views/order_details.dart';
import 'package:task/presentation/screens/talapat_view/views/order_payment.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

import 'views/custom_bottom_sheet.dart';

class ReorderDetailsScreen extends StatelessWidget {
  const ReorderDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GlobalTalapatCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            children: [
              Text(
                'اعادة طلب',
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
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          children: const [
            OrderDetails(),
            OrderAddress(),
            OrderPayment(),
            OrderCoupons(),
            SizedBox(height: 250.0,),
          ],
        ),
      ),
    );
  }
}
