import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class DriverOrderRequest extends StatelessWidget {
  const DriverOrderRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            children: [
              TextSpan(
                text: 'طلبات التوصيل\n',
                style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 14,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w500,
                    height: 1.5),
              ),
              TextSpan(
                text: 'التنبيهات مفعلة',
                style: TextStyle(
                    color: Color(0xFF27AE60),
                    fontSize: 8,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w500,
                    height: 3.0),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 185.0,
              width: 185.0,
              child: Image.asset("assets/images/chat.png"),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'لا يوجد تنبيهات لطلبات جديدة',
              style: StyleManager.titleStyle14.copyWith(
                color: const Color(0xFF4F4F4F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
