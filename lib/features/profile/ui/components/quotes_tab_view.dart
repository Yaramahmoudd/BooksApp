import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QuotesTabView extends StatelessWidget {
  const QuotesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SvgPicture.asset(AppIcons.trash, height: 20.h, width: 20.w),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  height: 93.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.greyF4,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset(AppIcons.quoteDownColored,
                          height: 16, width: 16),
                      verticalSpace(5),
                      Text(
                          'إنما السعادة الكاملة هي في إدراك الحق \n والعمل به، و السير على هديه في جميع الأحوال',
                          style: TextStyles.font14blackRegualar,
                          textAlign: TextAlign.end)
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
