import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

AlertDialog cancelDialog(context) => AlertDialog(
      contentPadding: const EdgeInsets.only(
        top: 24.0,
        bottom: 12.0,
        right: 24.0,
        left: 24.0,
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: TextButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 46.0)),
          child: Text(
            'تراجع',
            style: StyleManager.titleStyle12.copyWith(
              color: const Color(0xFF828282),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 46.0)),
          child: Text(
            'تأكيد',
            style: StyleManager.titleStyle12.copyWith(
              color: const Color(0xFFE60023),
            ),
          ),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/warning.png"),
          const SizedBox(
            height: 24.0,
          ),
          const Text(
            'تحذير',
            textAlign: TextAlign.center,
            style: StyleManager.titleStyle16,
          ),
          const SizedBox(height: 12.0),
          Text(
            'هل انت متأكد من الغاء الطلب؟',
            textAlign: TextAlign.center,
            style: StyleManager.titleStyle14.copyWith(
              color: const Color(0xFF333333),
            ),
          ),
          const SizedBox(
            height: 32.0,
          ),
        ],
      ),
    );
