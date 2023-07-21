import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.5,
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFF2F2F2),
    );
  }
}
