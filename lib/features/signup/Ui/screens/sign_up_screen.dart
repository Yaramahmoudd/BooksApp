import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/features/sign_in/UI/widget/email_part.dart';
import 'package:books_app/features/sign_in/UI/widget/password_part.dart';
import 'package:books_app/features/sign_in/UI/widget/social_auth.dart';
import 'package:books_app/features/signup/Ui/Widgets/have_account.dart';
import 'package:books_app/features/signup/Ui/Widgets/name_part.dart';
import 'package:books_app/features/signup/Ui/Widgets/new_password_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController Name=TextEditingController();
  TextEditingController Email=TextEditingController();
  TextEditingController Password=TextEditingController();

  GlobalKey<FormState>FormKey=GlobalKey<FormState>();
  @override
  void didpose(){
    super.dispose();
    Name.dispose();
    Email.dispose();
    Password.dispose();
  }
  Widget build(BuildContext context) {
    debugPrint("Current TextDirection: ${Directionality.of(context)}");
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(vertical: 30.h,horizontal: 15.w ),
            child: Form(
              key: FormKey,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(40),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text("إنشاء حساب",
                        style:TextStyles.font22blackBold,
                      ),
                    ),
                    verticalSpace(5),
                    Text("مرحبا بك في أُفق.",
                      style: TextStyles.font14grey7DRegualar,
                    ),
                    verticalSpace(30),
                    NamePart(Name: Name),
                    verticalSpace(30),
                    EmailPart(Email: Email),
                    verticalSpace(30),
                    NewPasswordPart(Password: Password,text: "كلمة المرور",),
                    verticalSpace(20),
                    AppTextButton(
                        buttonText: "إنشاء حساب",
                        textStyle: TextStyles.font16whiteBold,
                        onPressed: (){
                          if(FormKey.currentState!.validate()) {
                            context.pushNamed(Routes.confirmation);
                          }
                        },
                      backgroundColor: ColorsManager.primaryColor,
                    ),
                    verticalSpace(20),
                    SocialAuth(),
                    verticalSpace(60),
                    Have_Account(),
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }
}
