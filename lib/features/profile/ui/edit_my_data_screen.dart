import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EditMyDataScreen extends StatelessWidget {
  const EditMyDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تعديل بياناتي', style: TextStyles.font22blackMedium),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20.w,left: 20.w,bottom: 20.h),
        child: Column(
          children: [
            Stack(children: [
              Padding(
                  padding: EdgeInsets.only(right: 15.w, left: 15.w, top: 40.h),
                  child: Center(
                      child: CircleAvatar(
                    backgroundColor: ColorsManager.white,
                    radius: 50.r,
                    child: Image.asset(AppImages.girl),
                  ))),
              Positioned(
                  right: 120,
                  top: 110,
                  child: CircleAvatar(
                      backgroundColor: ColorsManager.greyF4,
                      radius: 20.r,
                      child: SvgPicture.asset(
                        AppIcons.editOutboxColored,
                        color: ColorsManager.primaryColor,
                        height: 22.h,
                        width: 22.w,
                      )))
            ]),
            verticalSpace(50),
            Row(
              children: [
                Text('المعلومات الشخصية',
                    style: TextStyles.font16primaryColorMedium),
                const Spacer(),
                SvgPicture.asset(AppIcons.editOutbox),
              ],
            ),
            verticalSpace(15),
            AppTextFormField(
              backgroundColor: ColorsManager.beigeF9,
              borderColor: ColorsManager.beigeED,
              contentPadding: EdgeInsets.all(20.h),
              initialVal: 'ندى طارق',
              label:
                  Text('اسم المستخدم', style: TextStyles.font14grey7DRegualar),
            ),
            verticalSpace(15),
            AppTextFormField(
              backgroundColor: ColorsManager.beigeF9,
              borderColor: ColorsManager.beigeED,
              contentPadding: EdgeInsets.all(20.h),
              initialVal: '123@gmail.com',
              label: Text('البريد الإلكتروني',
                  style: TextStyles.font14grey7DRegualar),
            ),
            verticalSpace(20),
            Row(
              children: [
                Text('كلمة المرور', style: TextStyles.font16primaryColorMedium),
                const Spacer(),
                SvgPicture.asset(AppIcons.editOutbox),
              ],
            ),
            verticalSpace(15),
            AppTextFormField(
              backgroundColor: ColorsManager.beigeF9,
              borderColor: ColorsManager.beigeED,
              contentPadding: EdgeInsets.all(20.h),
              initialVal: '*****',
              label:
                  Text('كلمة المرور', style: TextStyles.font14grey7DRegualar),
            ),
            const Spacer(),
            AppTextButton(
              buttonText: 'حفظ',
              textStyle: TextStyles.font16whiteBold,
              onPressed: () {},
              backgroundColor: ColorsManager.primaryColor,
              
            ),
          ],
        ),
      ),
    );
  }
}
