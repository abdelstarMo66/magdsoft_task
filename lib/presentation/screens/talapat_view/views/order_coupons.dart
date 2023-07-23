import 'package:flutter/material.dart';
import 'package:task/utils/styles.dart';

class OrderCoupons extends StatelessWidget {
  const OrderCoupons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Text(
            'كوبون',
            style: StyleManager.titleStyle12.copyWith(
              color: const Color(0xFF4F4F4F),
            ),
          ),
        ),
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/copon_variant.png",
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '0.15 ',
                            style: StyleManager.titleStyle16
                                .copyWith(color: const Color(0xFF333333)),
                          ),
                          const TextSpan(
                            text: 'ر.س',
                            style: TextStyle(
                              color: Color(0xFF333333),
                              fontSize: 8,
                              fontFamily: 'Alexandria',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const Text(
                      'رصيد الحساب',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 8,
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 8.0,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/copon_variant2.png",
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '0.15 ',
                            style: StyleManager.titleStyle16
                                .copyWith(color: Colors.white),
                          ),
                          const TextSpan(
                            text: 'ر.س',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8,
                              fontFamily: 'Alexandria',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    const Text(
                      'رصيد الحساب',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 8.0,
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/images/copon_variant.png",
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.add,color: Color(0xFFE60023),),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'اضف كوبون',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFE60023),
                        fontSize: 8,
                        fontFamily: 'Alexandria',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 24.0,),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: ShapeDecoration(
            color: const Color(0xFFEEF9F3),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(37),
            ),
          ),
          child: Row(
            children: const [
              Icon(Icons.check_circle_rounded,color: Color(0xFF27AE60),size: 18.0,),
              SizedBox(width: 8.0,),
              Expanded(
                child: Text(
                  'عرض التوصيل ب 9 ريال , بالحد الأعلي 11.0 ريال اذا تجاوزت مشترياتك 35 ريال',
                  style: TextStyle(
                    color: Color(0xFF27AE60),
                    fontSize: 10,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
