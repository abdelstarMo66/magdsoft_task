import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class AddressSavedScreen extends StatelessWidget {
  const AddressSavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text(
          'العناوين المحفوظة',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          children: [
            const SizedBox(
              height: 24.0,
            ),
            const SavedItem(),
            const SizedBox(
              height: 12.0,
            ),
            SizedBox(
              width: double.infinity,
              child: CustomButton(
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 16.0,
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'اضافة عنوان جديد',
                      style: StyleManager.titleStyle12,
                    )
                  ],
                ),
                bgColor: const Color(0xFFE60023),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SavedItem extends StatelessWidget {
  const SavedItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: const ShapeDecoration(
              color: Color(0x7FFDE6E9),
              shape: CircleBorder(),
            ),
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset("assets/icons/home.svg"),
          ),
          const SizedBox(
            width: 12.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'المنزل',
                style: StyleManager.titleStyle12
                    .copyWith(color: const Color(0xFF828282)),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                'شارع الوجه الكبير, الشوقية',
                style: StyleManager.titleStyle14,
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.add_photo_alternate_outlined,
                    size: 18.0,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'الدور الاول',
                    style: StyleManager.titleStyle12
                        .copyWith(color: const Color(0xFF828282)),
                  )
                ],
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.edit_outlined,
            size: 26,
          )
        ],
      ),
    );
  }
}
