import 'package:books_app/books_app.dart';
import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/core/widgets/custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';

class ConfirmationScreen extends StatelessWidget {
  const ConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 417.h,
          width: 343.w,
          padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 5.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomSvg(imgPath: AppIcons.confermation_beige),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("مبروك!",
                  style: TextStyles.font18primaryColorBold,
                  ),
                  verticalSpace(10),
                  Text("تم إنشاء حسابك بنجاح، يمكنك بدء رحلتك\n                       معنا الان.",
                  style: TextStyles.font16grey7DMedium,
                  ),
                ],
              ),
              verticalSpace(30),
              AppTextButton(
                  buttonText: "تسجيل الدخول",
                  textStyle: TextStyles.font16whiteBold,
                  onPressed: (){
                    context.pushReplacementNamed(Routes.signin);
                  },
                backgroundColor: ColorsManager.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
