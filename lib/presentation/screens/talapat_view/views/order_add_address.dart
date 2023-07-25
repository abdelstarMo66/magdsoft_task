import 'package:flutter/material.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class OrderAddAddress extends StatelessWidget {
  const OrderAddAddress({Key? key}) : super(key: key);

  final String location = "4 حي الملك فهد , مكة المكرمة";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          child: Text(
            'عناوين التوصيل',
            style: StyleManager.titleStyle12.copyWith(
              color: const Color(0xFF4F4F4F),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        // Open Google Map To locate the Location...
                      },
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: Color(0xFFE60023),
                            ),
                            child: const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                              size: 22.0,
                            ),
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'التوصيل الي',
                            style: StyleManager.titleStyle10.copyWith(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF4F4F4F),
                            ),
                          ),
                          const Spacer(),
                          Text(
                            'تغيير الموقع',
                            style: StyleManager.titleStyle10.copyWith(
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFFE60023),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 8.0, bottom: 8.0, right: 8.0),
                            height: 40.5,
                            child: const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              size: 20.0,
                              color: Color(0xFFE60023),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),
                    Text(
                      location,
                      style: StyleManager.titleStyle12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
