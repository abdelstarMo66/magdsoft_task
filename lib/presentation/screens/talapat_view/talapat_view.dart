import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:task/presentation/screens/talapat_view/views/talapat_body.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';

class Item {
  String text;
  Color color;
  Item({required this.text, required this.color});
}

class TalapatScreen extends StatefulWidget {
  const TalapatScreen({Key? key}) : super(key: key);

  @override
  State<TalapatScreen> createState() => _TalapatScreenState();
}

class _TalapatScreenState extends State<TalapatScreen> {
  int indexItem = 0;
  List<Item> items = [
    Item(text: "الكل", color: const Color(0xFF2F80ED)),
    Item(text: "متوجه للاستلام", color: const Color(0xFF27AE60)),
    Item(text: "تم الانتهاء", color: const Color(0xFF9B51E0)),
    Item(text: "ملغي", color: const Color(0xFFEB5757)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'الطلبات',
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Icon(Icons.history),
          ),
        ],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 64,
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: 12.0),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => CustomTalapatButton(
                text: items[index].text,
                bgColor: index == indexItem
                    ? items[index].color
                    : const Color(0xFFF0F0F0),
                textColor:
                    index == indexItem ? Colors.white : const Color(0xFF333333),
                press: () {
                  log('message');
                  setState(() {
                    indexItem = index;
                    log(indexItem.toString());
                  });
                },
              ),
              separatorBuilder: (context, index) => const SizedBox(
                width: 8.0,
              ),
              itemCount: items.length,
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Expanded(
            child: TalapatBody(index: indexItem),
          ),
        ],
      ),
    );
  }
}
