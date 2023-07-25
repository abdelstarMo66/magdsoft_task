import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/styles.dart';

import '../../../widgets/line.dart';

class OrderProcessBody extends StatefulWidget {
  final int index;
  const OrderProcessBody({Key? key, required this.index}) : super(key: key);

  @override
  State<OrderProcessBody> createState() => _OrderProcessBodyState();
}

class _OrderProcessBodyState extends State<OrderProcessBody> {
  bool invoice = false;
  @override
  Widget build(BuildContext context) {
    if (widget.index == 0) {
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Image(
                  image: const AssetImage("assets/images/clock.gif"),
                  width: 69.0,
                  height: 69.0,
                ),
                const SizedBox(
                  width: 12.0,
                ),
                Column(
                  children: [
                    const Text(
                      'نختار لك مندوب',
                      style: StyleManager.titleStyle16,
                    ),
                    const SizedBox(
                      height: 13.0,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.tag_faces_sharp),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          'طلبك عندنا',
                          style: StyleManager.titleStyle12.copyWith(
                            color: const Color(0xFFE60023),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      side: const BorderSide(
                        color: Color(0xFFE60023),
                        width: 1.0,
                      ),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 4.0),
                    elevation: 0.0,
                  ),
                  child: Text(
                    'مكافأة',
                    style: StyleManager.titleStyle12.copyWith(
                      color: const Color(0xFF333333),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'تفاصيل الطلب',
                      style: StyleManager.titleStyle12.copyWith(
                        color: const Color(0xFF4F4F4F),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0x7FFDE6E9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      child: Text(
                        'سلعة',
                        style: StyleManager.titleStyle10.copyWith(
                          color: const Color(0xFFE60023),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '#25537546',
                      style: StyleManager.titleStyle14.copyWith(
                        color: const Color(0xFF828282),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 23.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 12.0,
                        backgroundColor: const Color(0xFFE60023),
                        child: Text(
                          '1',
                          style: StyleManager.titleStyle12.copyWith(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 8.0,
                      ),
                      const Text(
                        'وجبة دجاج البيك',
                        style: StyleManager.titleStyle14,
                      ),
                      const Spacer(),
                      Text(
                        '25.25 ر.س',
                        style: StyleManager.titleStyle14
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      invoice = !invoice;
                    });
                  },
                  child: SizedBox(
                    height: 70.0,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 16.0,
                        ),
                        const Text(
                          'الفاتورة',
                          style: StyleManager.titleStyle14,
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        const Icon(
                          Icons.document_scanner_outlined,
                          color: Colors.black,
                        ),
                        const Spacer(),
                        Container(
                          width: 150.0,
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: CustomButton(
                            widget: Text(
                              'سدد الأن',
                              style: StyleManager.titleStyle12.copyWith(
                                color: const Color(0xFFFCFDFE),
                              ),
                            ),
                            bgColor: const Color(0xFF2F80ED),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            invoice
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down,
                            color: Colors.black,
                            size: 38.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (invoice)
                  Column(
                    children: [
                      const Line(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        child: Row(
                          children: [
                            Text(
                              'قيمة الطلب',
                              style: StyleManager.titleStyle10.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '5 ر.س',
                              style: StyleManager.titleStyle10.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Line(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        child: Row(
                          children: [
                            Text(
                              "قيمة التوصيل (تشمل الضريبة)",
                              style: StyleManager.titleStyle10.copyWith(
                                color: Colors.black,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '20 ر.س',
                              style: StyleManager.titleStyle10.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Line(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        child: Row(
                          children: [
                            Text(
                              'المبلغ المستحق',
                              style: StyleManager.titleStyle12.copyWith(
                                color: const Color(0xFF2F80ED),
                              ),
                            ),
                            const Spacer(),
                            Text(
                              '25 ر.س',
                              style: StyleManager.titleStyle14.copyWith(
                                color: const Color(0xFF2F80ED),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                    ],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 37.0,
                  backgroundImage: NetworkImage(
                      "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1689835751~exp=1689836351~hmac=e30349f672bc5fc0b6d80718d2f6da8a1e38b8b8813ee6d8e330e30df079944f"),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'اسامة الحربي',
                      style: StyleManager.titleStyle14
                          .copyWith(fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          size: 16.0,
                          color: Color(0xFFF1EA30),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          '5.0',
                          style: StyleManager.titleStyle10,
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.telegram_rounded,
                  color: Color(0xFF2F80ED),
                  size: 42.0,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 19.0,
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'تفاصيل الطلب',
                      style: StyleManager.titleStyle12,
                    ),
                    const SizedBox(
                      width: 16.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFE0E0E0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28),
                        ),
                      ),
                      child: Text(
                        'سلعة',
                        style: StyleManager.titleStyle10.copyWith(
                          color: const Color(0xFF4F4F4F),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      '#847575656657',
                      style: StyleManager.titleStyle12.copyWith(
                        color: const Color(0xFF4f4f4f),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(Icons.keyboard_arrow_down,
                          color: Colors.black, size: 38.0),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
