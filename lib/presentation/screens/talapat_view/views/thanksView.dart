import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThanksView extends StatelessWidget {
  const ThanksView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("assets/images/done_image.svg"),
              const SizedBox(
                height: 48.0,
              ),
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
                'تم ارسال الاكرامية',
                style: TextStyle(
                  color: Color(0xFF27AE60),
                  fontSize: 18,
                  fontFamily: 'Alexandria',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
