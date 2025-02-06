import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/core/widgets/custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class ConfirmPasswordScreen extends StatelessWidget {
  const ConfirmPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 343.w,
          height: 400.h,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomSvg(imgPath: AppIcons.confirm_password_beige),
              Text("تم إنشاء كلمة مرور جديدة بنجاح",
              style: TextStyles.font18primaryColorBold,
              ),
              AppTextButton(
                  buttonText: "تسجيل الدخول",
                  textStyle: TextStyles.font16whiteBold,
                  onPressed: (){
                    context.pushReplacementNamed(Routes.signin);
                  },
                backgroundColor: ColorsManager.primaryColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}
