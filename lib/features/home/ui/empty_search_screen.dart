import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptySearchScreen extends StatelessWidget {
  const EmptySearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('البحث', style: TextStyles.font22blackMedium),
            centerTitle: true),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
          child: Column(
            children: [
              AppTextFormField(
                initialVal: 'الفر',
                prefexIcon: const Icon(Icons.search,
                    color: ColorsManager.greyA9, size: 24),
                borderColor: ColorsManager.beigeED,
                backgroundColor: ColorsManager.greyF4,
                contentPadding: EdgeInsets.symmetric(vertical: 15.h),
                borderRadius: 12.r,
              ),
              verticalSpace(180),
              Image.asset(AppImages.emptySearch, height: 190.h, width: 170.w),
              verticalSpace(20),
              Text(
                'لا يوجد نتائج للبحث',
                style: TextStyles.font18grey7DRegualar,
              )
            ],
          ),
        ));
  }
}
