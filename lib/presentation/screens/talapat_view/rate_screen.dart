import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import '../../../utils/constance.dart';
import '../../../utils/routes.dart';
import '../../../utils/styles.dart';

class RateScreen extends StatelessWidget {
  const RateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          children: [
            const SizedBox(
              height: 90.0,
            ),
            SvgPicture.asset("assets/images/done_image.svg"),
            const SizedBox(
              height: 48.0,
            ),
            Column(
              children: [
                const Text(
                  'تهانينا !',
                  style: TextStyle(
                    color: Color(0xFF27AE60),
                    fontSize: 20,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 9.0,
                ),
                const Text(
                  'تم إكتمال الطلب',
                  style: TextStyle(
                    color: Color(0xFF27AE60),
                    fontSize: 18,
                    fontFamily: 'Alexandria',
                    fontWeight: FontWeight.w400,
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
              height: 75.0,
            ),
            TextField(
              minLines: 3, // Set this
              maxLines: 6, // and this
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: "إذا لديك ملاحظات",
                hintStyle: StyleManager.titleStyle14.copyWith(
                  color: Color(0xFF4F4F4F),
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
              height: 32.0,
            ),
            CustomButton(
              press: () {
                Navigator.pushNamed(context, Routes.rateDetailsScreen);
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
      ),
    );
  }
}
