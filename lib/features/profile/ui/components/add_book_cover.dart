import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AddBookCover extends StatelessWidget {
  const AddBookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('أضف صورة الغلاف', style: TextStyles.font16blackMedium),
        Center(
            child: Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: ColorsManager.beigeF9,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      const Icon(Icons.add, color: ColorsManager.primaryColor),
                      Text('تحميل',
                          style: TextStyles.font16primaryColorRegualar)
                    ])))),
        verticalSpace(20),
        Text('أضف أول 10 صفحات من الكتاب', style: TextStyles.font16blackMedium),
        Center(
            child: Container(
                height: 110.h,
                width: 210.w,
                decoration: BoxDecoration(
                  color: ColorsManager.beigeF9,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      SvgPicture.asset(AppIcons.directInbox),
                      Text('اسحب الملف هنا لتحميله',
                          style: TextStyles.font16primaryColorRegualar)
                    ])))),
        verticalSpace(250)
      ],
    );
  }
}
