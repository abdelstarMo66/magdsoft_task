import 'package:flutter/material.dart';
import 'package:task/presentation/screens/talapat_view/views/reorder_item.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';
import '../../../../utils/routes.dart';
import '../../../widgets/custom_button.dart';

class ReorderScreen extends StatelessWidget {
  const ReorderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0, bottom: 14.0, left: 16.0),
            child: CustomTalapatButton(
              textColor: Colors.black,
              text: 'المساعدة',
              bgColor: const Color(0xFFF2F2F2),
              press: () {},
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: const [
            SizedBox(
              height: 12.0,
            ),
            ReorderItem(),
          ],
        ),
      ),
    );
  }
}
