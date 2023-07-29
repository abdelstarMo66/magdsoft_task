import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/routes.dart';
import 'package:task/utils/styles.dart';

import '../../widgets/custom_button.dart';

class RateDetailsScreen extends StatelessWidget {
  const RateDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("تقييم المندوب"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        children: [
          const SizedBox(
            height: 24.0,
          ),
          const CircleAvatar(
            radius: 37.0,
            backgroundImage: NetworkImage(
                "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1689835751~exp=1689836351~hmac=e30349f672bc5fc0b6d80718d2f6da8a1e38b8b8813ee6d8e330e30df079944f"),
          ),
          const SizedBox(
            height: 22.0,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'اسامة الحربي',
                    style: StyleManager.titleStyle14
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  SvgPicture.asset("assets/icons/blue_mark.svg"),
                ],
              ),
              const SizedBox(
                height: 7.0,
              ),
              Text(
                'ID 01929',
                style: StyleManager.titleStyle12.copyWith(
                  color: const Color(0xFF2F80ED),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Text(
                'قم بتقييم الخدمة',
                style: StyleManager.titleStyle12.copyWith(
                  color: const Color(0xFF505050),
                ),
              ),
              const SizedBox(height: 12.0),
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                glow: false,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          const SizedBox(
            height: 24.0,
          ),
          TextField(
            minLines: 3, // Set this
            maxLines: 6, // and this
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: "قيم المندوب و سرعة الخدمة",
              hintStyle: StyleManager.titleStyle14.copyWith(
                color: const Color(0xFF4F4F4F),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1.0,
                  color: Color(0xFFE0E0E0),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1.0,
                  color: Color(0xFFE0E0E0),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: const BorderSide(
                  width: 1.0,
                  color: Color(0xFFE0E0E0),
                ),
              ),
              prefixIcon: const Icon(
                Icons.edit,
                color: Color(0xFFE60023),
              ),
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: Column(
              children: [
                const Text(
                  'اضافة اكرامية',
                  style: StyleManager.titleStyle14,
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 38.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(46.0),
                          color: const Color(0xFFE60023),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFE0E0E0),
                          )),
                      child: Text(
                        '5 ريال',
                        style: StyleManager.titleStyle14.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 38.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(46.0),
                          color: const Color(0xFFFFFFFF),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFE0E0E0),
                          )),
                      child: Text(
                        '10 ريال',
                        style: StyleManager.titleStyle14.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 38.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(46.0),
                          color: const Color(0xFFFFFFFF),
                          border: Border.all(
                            width: 1.0,
                            color: const Color(0xFFE0E0E0),
                          )),
                      child: Text(
                        '15 ريال',
                        style: StyleManager.titleStyle14.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          CustomButton(
            press: () {
              Navigator.pushNamed(context, Routes.thanksView);
            },
            widget: Text(
              'ارسال',
              style: StyleManager.titleStyle14.copyWith(
                color: const Color(0xFFFCFDFE),
              ),
            ),
            bgColor: const Color(0xFFE60023),
          ),
          const SizedBox(
            height: 8.0,
          ),
          CustomButton(
            widget: Text(
              'تخطي',
              style: StyleManager.titleStyle12.copyWith(
                color: const Color(0xFF4F4F4F),
              ),
            ),
            bgColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
