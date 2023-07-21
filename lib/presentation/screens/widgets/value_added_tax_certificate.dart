import 'package:flutter/material.dart';
import '../../../utils/constance.dart';
import '../../../utils/styles.dart';

class ValueAddedTaxCertificateScreen extends StatelessWidget {
  const ValueAddedTaxCertificateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar (
        title: const Text(
          'شهادة ضريبة القيمة المضافة',
        ),
      ),
      body: const SizedBox(),
    );
  }
}
