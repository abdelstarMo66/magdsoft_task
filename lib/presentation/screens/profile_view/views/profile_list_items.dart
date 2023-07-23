import 'package:flutter/material.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';
import 'balance_sheet.dart';
import 'profile_item.dart';

class ProfileListItems extends StatelessWidget {
  const ProfileListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Scaffold.of(context).showBottomSheet(
              (context) => const BalanceSheet(),
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
        const ProfileItem(
          text: "وضع المندوب",
          icon: "assets/icons/user.svg",
          widget: SizedBox(
            height: 40.5,
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20.0,
            ),
          ),
        ),
        ProfileItem(
          text: "عدد الطلبات",
          icon: "assets/icons/delivery.svg",
          widget: SizedBox(
            height: 40.5,
            child: Text(
              '3 طلبات',
              style: StyleManager.titleStyle14.copyWith(
                color: const Color(0xFF2F80ED),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.pushNamed(context, Routes.addressSavedScreen);
          },
          child: ProfileItem(
            text: "العناوين المحفوظة",
            icon: "assets/icons/location--star.svg",
            widget: SizedBox(
              height: 40.5,
              child: Row(
                children: [
                  Text(
                    '1',
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
          onTap: (){
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
          onTap: (){
            Navigator.pushNamed(context, Routes.supportScreen);
          },
          child: const ProfileItem(
            text: "الدعم للعملاء",
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
          onTap: (){
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
          onTap: (){
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
