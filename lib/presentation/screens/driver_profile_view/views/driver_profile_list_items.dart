import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';

import '../../profile_view/views/balance_sheet.dart';
import '../../profile_view/views/profile_item.dart';

class DriverProfileListItems extends StatelessWidget {
  const DriverProfileListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.white,
              context: context,
              builder: (context) => ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        'استلام الطلب',
                        style: StyleManager.titleStyle14.copyWith(
                          color: const Color(0xFF333333),
                        ),
                      ),
                      const SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        'يمكن الاختيار بين وضعين للحصول علي الطلبات',
                        style: StyleManager.titleStyle10.copyWith(
                          color: const Color(0xFF828282),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 44.0,
                  ),
                  Table(
                    border: TableBorder.all(
                        color: const Color(0xFFE0E0E0), width: 1.0),
                    children: [
                      TableRow(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 12.0),
                            child: Text(
                              'التعيين التلقائي',
                              style: StyleManager.titleStyle12.copyWith(
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF2F80ED),
                              ),
                            ),
                          ),
                          const TableItem(text: "قائمة الطلبات"),
                        ],
                      ),
                      const TableRow(children: [
                        TableItem(
                          text: "نحن نختار الطلب لك",
                        ),
                        TableItem(
                          text: "يمكنك اختيار الطلب من قائمة الطلبات",
                        ),
                      ]),
                      const TableRow(children: [
                        TableItem(
                          text: "يتم تعيين الطلب لك فقط",
                        ),
                        TableItem(
                          text: "تنافس مع المناديب الاخرين علي الطلب",
                        ),
                      ]),
                      const TableRow(children: [
                        TableItem(
                          text: "يمكنك قبول او رفض الطلب",
                        ),
                        TableItem(
                          text: "ارسال العروض",
                        ),
                      ]),
                    ],
                  ),
                  const SizedBox(
                    height: 90.0,
                  ),
                  Text(
                    'يمكنك التغيير الي الوضع المطلوب في اي وقت',
                    textAlign: TextAlign.center,
                    style: StyleManager.titleStyle10.copyWith(
                      color: const Color(0xFF4F4F4F),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      widget: Text(
                        'تغيير الوضع',
                        style: StyleManager.titleStyle12.copyWith(
                          color: const Color(0xFFFCFDFE),
                        ),
                      ),
                      bgColor: const Color(0xFFE60023),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: CustomButton(
                      widget: Text(
                        'اغلاق',
                        style: StyleManager.titleStyle12.copyWith(
                          color: const Color(0xFF333333),
                        ),
                      ),
                      bgColor: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 33.0,
                  )
                ],
              ),
              elevation: 10.0,
            );
          },
          child: ProfileItem(
            text: "استلام الطلبات",
            icon: "assets/icons/3D-software.svg",
            widget: SizedBox(
              height: 40.0,
              child: Row(
                children: [
                  SizedBox(
                    child: Text(
                      'التعيين التلقائي',
                      style: StyleManager.titleStyle14.copyWith(
                        color: const Color(0xFF2F80ED),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) => const BalanceSheet(),
              elevation: 10.0,
            );
          },
          child: ProfileItem(
            text: "رصيد الحساب",
            icon: "assets/icons/wallet.svg",
            widget: Row(
              children: [
                Text(
                  '1 ر.س',
                  style: StyleManager.titleStyle14
                      .copyWith(color: const Color(0xFF2F80ED)),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE60023),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    elevation: 0.0,
                  ),
                  child: Row(
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
                        'اضافة',
                        style: StyleManager.titleStyle12,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.driverProfitsScreen);
          },
          child: const ProfileItem(
            text: "ارباحي",
            icon: "assets/icons/money.svg",
            widget: SizedBox(
              height: 40.5,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20.0,
              ),
            ),
          ),
        ),
        const ProfileItem(
          text: "وضع المستخدم",
          icon: "assets/icons/user.svg",
          widget: SizedBox(
            height: 40.5,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20.0,
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.driverRateScreen);
          },
          child: ProfileItem(
            text: "تقييم الخدمات",
            icon: "assets/icons/star.svg",
            widget: SizedBox(
              height: 40.5,
              child: Row(
                children: [
                  Text(
                    '2',
                    style: StyleManager.titleStyle14.copyWith(
                      color: const Color(0xFF2F80ED),
                    ),
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.driverRateScreen);
          },
          child: ProfileItem(
            text: "ملاحظات المستخدمين",
            icon: "assets/icons/chat.svg",
            widget: SizedBox(
              height: 40.5,
              child: Row(
                children: [
                  Text(
                    '2',
                    style: StyleManager.titleStyle14.copyWith(
                      color: const Color(0xFF2F80ED),
                    ),
                  ),
                  const SizedBox(
                    width: 24.0,
                  ),
                  const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.couponsScreen);
          },
          child: ProfileItem(
            text: "الكوبونات",
            icon: "assets/icons/percentage--filled.svg",
            widget: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE60023),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 0.0,
              ),
              child: Row(
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
                    'اضافة',
                    style: StyleManager.titleStyle12,
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.driverSupportScreen);
          },
          child: const ProfileItem(
            text: "دعم المناديب",
            icon: "assets/icons/support_agent.svg",
            widget: SizedBox(
              height: 40.5,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20.0,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.settingsScreen);
          },
          child: const ProfileItem(
            text: "الاعدادات",
            icon: "assets/icons/settings.svg",
            widget: SizedBox(
              height: 40.5,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20.0,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.paymentScreen);
          },
          child: const ProfileItem(
            text: "طريقة السداد",
            icon: "assets/icons/payments.svg",
            widget: SizedBox(
              height: 40.5,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TableItem extends StatelessWidget {
  final String text;
  const TableItem({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
      child: Text(
        text,
        style: StyleManager.titleStyle12.copyWith(
          color: const Color(0xFF333333),
        ),
      ),
    );
  }
}
