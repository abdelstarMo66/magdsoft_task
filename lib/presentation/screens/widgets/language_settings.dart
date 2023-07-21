import 'package:flutter/material.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class LanguageSettingsScreen extends StatelessWidget {
  const LanguageSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool selected = false;
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'اعدادت اللغة',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            SizedBox(height: 53.0,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Text(
                    'عربي',
                    style: StyleManager.titleStyle14.copyWith(
                      fontWeight: FontWeight.w500,
                      color: !selected ? const Color(0xFFE60023) : Colors.black,
                    ),
                  ),
                  const Spacer(),
                  if (!selected)
                    const SizedBox(
                      height: 40.5,
                      child: Icon(
                        Icons.check,
                        size: 20.0,
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Text(
                    'English',
                    style: StyleManager.titleStyle14.copyWith(
                      fontWeight: FontWeight.w500,
                      color: selected ? const Color(0xFFE60023) : Colors.black,
                    ),
                  ),
                  const Spacer(),
                  if (selected)
                    const SizedBox(
                      height: 40.5,
                      child: Icon(
                        Icons.check,
                        size: 20.0,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
