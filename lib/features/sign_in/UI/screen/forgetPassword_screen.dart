import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/features/sign_in/UI/widget/email_part.dart';
import 'package:books_app/features/sign_in/UI/widget/forget_password_app_bar.dart';
import 'package:books_app/features/sign_in/UI/widget/remember_password_and_signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../widget/forget_password_beiges.dart';

class ForgetpasswordScreen extends StatefulWidget {
  const ForgetpasswordScreen({super.key});

  @override
  State<ForgetpasswordScreen> createState() => _ForgetpasswordScreenState();
}

class _ForgetpasswordScreenState extends State<ForgetpasswordScreen> {
  TextEditingController Email = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(200), child: ForgetPasswordAppBar()),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 10.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: formKey,
            child: Column(children: [
              ForgetPasswordBeiges(),
              verticalSpace(30),
              EmailPart(Email: Email),
              verticalSpace(35),
              AppTextButton(
                buttonText: "إرسال الكود",
                textStyle: TextStyles.font16whiteBold,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.pushNamed(Routes.otpScreen);
                  }
                },
                backgroundColor: ColorsManager.primaryColor,
              ),
              RememberPasswordAndSignin()
            ]
            ),
          ),
        ),
      )),
    );
  }
}
