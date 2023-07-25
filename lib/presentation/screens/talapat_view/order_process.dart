import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/presentation/screens/talapat_view/views/order_process_body.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class OrderProcessScreen extends StatefulWidget {
  const OrderProcessScreen({Key? key}) : super(key: key);

  @override
  State<OrderProcessScreen> createState() => _OrderProcessScreenState();
}

class _OrderProcessScreenState extends State<OrderProcessScreen> {
  int index = 0;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        index++;
      });
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          index++;
        });
        Future.delayed(const Duration(seconds: 3), () {
          setState(() {
            index++;
          });
        });
      });
    });

    super.initState();
  }

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
      body: ListView(
        physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Text(
                  'استلمنا طلبك',
                  style: StyleManager.titleStyle16,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 44.0,
                      height: 44.0,
                      decoration: ShapeDecoration(
                        shape: const CircleBorder(),
                        color: index >= 0
                            ? const Color(0xFFE60023)
                            : const Color(0xFFF7F7F7),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.store_mall_directory_outlined,
                        color: index >= 0
                            ? Colors.white
                            : const Color(0xFFBDBDBD),
                      ),
                    ),
                    Container(
                      width: 44.0,
                      height: 3.0,
                      color: index >= 0
                          ? const Color(0xFFE60023)
                          : const Color(0xFFF7F7F7),
                    ),
                    Container(
                      width: 44.0,
                      height: 44.0,
                      decoration: ShapeDecoration(
                        shape: const CircleBorder(),
                        color: index >= 1
                            ? const Color(0xFFE60023)
                            : const Color(0xFFF7F7F7),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.shopping_bag_outlined,
                        color: index >= 1
                            ? Colors.white
                            : const Color(0xFFBDBDBD),
                      ),
                    ),
                    Container(
                      width: 44.0,
                      height: 3.0,
                      color: index >= 1
                          ? const Color(0xFFE60023)
                          : const Color(0xFFF7F7F7),
                    ),
                    Container(
                      width: 44.0,
                      height: 44.0,
                      decoration: ShapeDecoration(
                        shape: const CircleBorder(),
                        color: index >= 2
                            ? const Color(0xFFE60023)
                            : const Color(0xFFF7F7F7),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.local_shipping_outlined,
                        color: index >= 2
                            ? Colors.white
                            : const Color(0xFFBDBDBD),
                      ),
                    ),
                    Container(
                      width: 44.0,
                      height: 3.0,
                      color: index >= 2
                          ? const Color(0xFFE60023)
                          : const Color(0xFFF7F7F7),
                    ),
                    Container(
                      width: 44.0,
                      height: 44.0,
                      decoration: ShapeDecoration(
                        shape: const CircleBorder(),
                        color: index >= 3
                            ? const Color(0xFFE60023)
                            : const Color(0xFFF7F7F7),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.location_on_outlined,
                        color: index >= 3
                            ? Colors.white
                            : const Color(0xFFBDBDBD),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'استلمنا طلبك, وراح نبلغك لحظة قبول المتجر للطلب',
                  style: StyleManager.titleStyle10.copyWith(
                    color: const Color(0xFF4F4F4F),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
           OrderProcessBody(index: index),

          const SizedBox(
            height: 24.0,
          ),
          CustomButton(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                  size: 16.0,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  'الغاء الطلب',
                  style: StyleManager.titleStyle12,
                )
              ],
            ),
            bgColor: const Color(0xFFEB5757),
          ),
        ],
      ),
    );
  }
}
