import 'package:flutter/material.dart';
import 'package:task/presentation/screens/driver_profile_view/views/rate_item.dart';

class DriverRateScreen extends StatelessWidget {
  const DriverRateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ملاحظات المستخدمين"),
      ),
      body: Column(
        children: const [
          SizedBox(height: 6.0,),
          RateItem(),
          RateItem(),
        ],
      ),
    );
  }
}
