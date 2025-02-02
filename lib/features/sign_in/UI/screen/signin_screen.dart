import 'package:books_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_button.dart';
import '../widget/cheak_account.dart';
import '../widget/email_part.dart';
import '../widget/password_part.dart';
import '../widget/social_auth.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();


  void dispose() {
    super.dispose();
    Email.dispose();
    Password.dispose();
  }
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // print("${context.locale.languageCode}");
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: formkey,
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 10.w),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(40),
                  Text("تسجيل الدخول",
                    style:TextStyles.font22blackBold,
                  ),
                  verticalSpace(5),
                  Text("مرحبا بك في أُفق.",
                    style: TextStyles.font14grey7DRegualar,
                  ),
                  verticalSpace(40),
                  EmailPart(Email: Email),
                  verticalSpace(20),
                  PasswordPart(Password:Password),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: "تسجيل الدخول",
                    textStyle: TextStyles.font16whiteBold,
                    onPressed:(){
                      if(formkey.currentState!.validate()) {
                        context.pushNamed(Routes.splashScreen);
                      }
                    },
                    backgroundColor: ColorsManager.primaryColor,
                  ),
                  verticalSpace(30),
                  SocialAuth(),
                  verticalSpace(70),
                  CheakAccount()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
