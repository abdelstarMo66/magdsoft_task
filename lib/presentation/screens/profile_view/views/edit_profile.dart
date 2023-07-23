import 'package:flutter/material.dart';
import 'package:task/presentation/widgets/custom_button.dart';
import 'package:task/presentation/widgets/edit_form_item.dart';
import 'package:task/utils/constance.dart';
import 'package:task/utils/styles.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController bdController = TextEditingController();
    nameController.text = "اسامة الحربي";
    emailController.text = "osama@gmail.com";
    phoneController.text = "+96643567478";
    bdController.text = "1987";

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        title: const Text(
          'تعديل البروفايل',
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  const CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(
                        "https://img.freepik.com/free-photo/waist-up-portrait-handsome-serious-unshaven-male-keeps-hands-together-dressed-dark-blue-shirt-has-talk-with-interlocutor-stands-against-white-wall-self-confident-man-freelancer_273609-16320.jpg?w=996&t=st=1689835751~exp=1689836351~hmac=e30349f672bc5fc0b6d80718d2f6da8a1e38b8b8813ee6d8e330e30df079944f"),
                  ),
                  const CircleAvatar(
                    radius: 20.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 18.0,
                      backgroundColor: Color(0xFFE60023),
                      child: Icon(
                        Icons.edit_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          EditFormItem(
            text: "اسم الكامل",
            inputType: TextInputType.name,
            editController: nameController,
          ),
          EditFormItem(
            text: "الايميل",
            inputType: TextInputType.emailAddress,
            editController: emailController,
          ),
          EditFormItem(
            text: "رقم الهاتف",
            inputType: TextInputType.phone,
            editController: phoneController,
          ),
          EditFormItem(
            text: "سنة الميلاد",
            inputType: TextInputType.number,
            editController: bdController,
          ),
          Row(
            children: [
              Text(
                'النوع',
                style: StyleManager.titleStyle14
                    .copyWith(color: const Color(0xFF828282)),
              ),
              const Spacer(),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                decoration: ShapeDecoration(
                  color: const Color(0xFFE60023),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Center(
                  child: Text(
                    'ذكر',
                    style:
                        StyleManager.titleStyle12.copyWith(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 0.50, color: Color(0xFF828282)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'انثي',
                  style: StyleManager.titleStyle12
                      .copyWith(color: const Color(0xFF4F4F4F)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 51.0,
          ),
          const CustomButton(
            widget: Text(
              'حفظ',
              style: StyleManager.titleStyle14,
            ),
            bgColor: Color(0xFFE60023),
          ),
        ],
      ),
    );
  }
}
