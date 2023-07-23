import 'package:flutter/material.dart';
import 'package:task/presentation/screens/talapat_view/views/delete.dart';
import 'package:task/presentation/screens/talapat_view/views/finish.dart';
import 'package:task/presentation/screens/talapat_view/views/order.dart';

import 'late.dart';

class TalapatBody extends StatelessWidget {
  final int index;
  const TalapatBody({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        if (index == 0 || index == 1)
          Column(
            children: const [
              Ordering(),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        if (index == 0 || index == 2)
          Column(
            children: const [
              Finished(),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        if (index == 0 || index == 3)
          Column(
            children: const [
              Deleted(),
              SizedBox(
                height: 8.0,
              ),
            ],
          ),
        if (index == 0 || index == 3)
          Column(
            children: const [
              Late(),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
      ],
    );
  }
}
