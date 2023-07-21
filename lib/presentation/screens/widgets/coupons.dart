import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

import '../../widgets/line.dart';

class CouponsScreen extends StatelessWidget {
  const CouponsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF2F2F2),
      appBar: AppBar(
        title: const Text(
          'الكوبونات',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: 42.0),
        child: Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () {
              scaffoldKey.currentState?.showBottomSheet(
                (context) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding, vertical: 12.0),
                      child: Row(
                        children: [
                          const Text(
                            'اضف كوبون',
                            style: StyleManager.titleStyle12,
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
                    const SizedBox(
                      height: 24.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'ادخل رقم الكوبون',
                            style: StyleManager.titleStyle12,
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                            width: 140,
                            height: 46,
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF27AE60),
                                    width: 1.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF27AE60),
                                    width: 1.0,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF27AE60),
                                    width: 1.0,
                                  ),
                                ),
                                label: const Center(
                                  child: Text(
                                    '- - - -',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Alexandria',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 40.0, vertical: 13.0),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 24.0,
                          ),
                          Text(
                            'هل تريد الحصول علي المزيد من الكوبونات؟ تابع علي',
                            style: StyleManager.titleStyle10.copyWith(
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 12.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'انستجرام',
                                style: StyleManager.titleStyle10.copyWith(
                                  decoration: TextDecoration.underline,
                                  color: const Color(0xFFE60023),
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'فيس بوك',
                                style: StyleManager.titleStyle10.copyWith(
                                  decoration: TextDecoration.underline,
                                  color: const Color(0xFFE60023),
                                ),
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                'تويتر',
                                style: StyleManager.titleStyle10.copyWith(
                                  decoration: TextDecoration.underline,
                                  color: const Color(0xFFE60023),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 21.0,
                          ),
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(horizontal: 87.0),
                            child: CustomButton(
                              widget: Text(
                                'تحقق',
                                style: StyleManager.titleStyle12.copyWith(
                                  color: Color(0xFFFCFDFE),
                                ),
                              ),
                              bgColor: Color(0xFFE60023),
                            ),
                          ),
                          const SizedBox(
                            height: 32.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            child: SizedBox(
              width: 184,
              height: 208,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset("assets/images/Subtract.svg"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        size: 22.0,
                      ),
                      const SizedBox(
                        height: 3.0,
                      ),
                      Text(
                        'اضف كوبون',
                        style: StyleManager.titleStyle12.copyWith(
                          color: const Color(0xFFE60023),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
