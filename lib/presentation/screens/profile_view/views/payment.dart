import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/presentation/widgets/line.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'طريقة السداد',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 12.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                children: [
                  Image.asset("assets/images/cash.png"),
                  const SizedBox(
                    width: 12.0,
                  ),
                  const Text(
                    'cash',
                    style: StyleManager.titleStyle16,
                  ),
                ],
              ),
            ),
            const Line(),
            VisaItem(
                number: "2017****",
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding, vertical: 12.0),
                          child: Row(
                            children: [
                              Image.asset("assets/images/visa.png"),
                              const SizedBox(
                                width: 12.0,
                              ),
                              const Text(
                                '2017****',
                                style: StyleManager.titleStyle16,
                              ),
                              const Spacer(),
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: const Icon(
                                  Icons.close,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Line(),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: defaultPadding,
                              vertical: 12.0,
                            ),
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.delete_outline,
                                  size: 20.0,
                                ),
                                const SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  'حذف',
                                  style: StyleManager.titleStyle14.copyWith(
                                    color: const Color(0xFFEB5757),
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 49.0,
                        ),
                      ],
                    ),
                  );
                },
                thisDefault: true),
            const Line(),
            VisaItem(number: "5025****", onTap: () {}),
            const SizedBox(
              height: 24.0,
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
                      'اضف بطاقة بنكية',
                      style: StyleManager.titleStyle12,
                    )
                  ],
                ),
                bgColor: const Color(0xFFE60023),
                press: () {
                  Navigator.pushNamed(context, Routes.addCardScreen);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VisaItem extends StatelessWidget {
  final String number;
  final Function() onTap;
  final bool thisDefault;
  const VisaItem({
    Key? key,
    required this.number,
    required this.onTap,
    this.thisDefault = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Row(
          children: [
            Image.asset("assets/images/visa.png"),
            const SizedBox(
              width: 12.0,
            ),
            const Text(
              '2017****',
              style: StyleManager.titleStyle16,
            ),
            const Spacer(),
            if (thisDefault)
              const Text(
                'افتراضي',
                style: StyleManager.titleStyle10,
              ),
            if (thisDefault)
              const SizedBox(
                width: 12.0,
              ),
            const Icon(
              Icons.more_vert_outlined,
              color: Color(0xFF333333),
            ),
          ],
        ),
      ),
    );
  }
}
