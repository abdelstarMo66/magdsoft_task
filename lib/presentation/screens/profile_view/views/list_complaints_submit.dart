import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class ListComplaintsSubmitScreen extends StatelessWidget {
  const ListComplaintsSubmitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'قائمة الشكاوي المقدمة',
        ),
      ),
      body: Center(
        child: Text(
          'لا يوجد شكاوي',
          style: StyleManager.titleStyle14.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xFFBDBDBD),
          ),
        ),
      ),
    );
  }
}
