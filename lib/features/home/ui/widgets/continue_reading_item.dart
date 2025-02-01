import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/features/home/ui/widgets/reading_prograss.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueReadingItem extends StatelessWidget {
  const ContinueReadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20.w),
      height: 95.h,
      width: 228.w,
      decoration: BoxDecoration(
        color: ColorsManager.greyF5,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: ColorsManager.black.withOpacity(0.2),
            blurRadius: 6,
            spreadRadius: 1,
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(3.r),
                child: Image.asset(AppImages.bookImage)),
            horizontalSpace(8),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("أصوات الكلام", style: TextStyles.font16blackMedium),
                Text("أدب", style: TextStyles.font14grey7DRegualar),
                const ReadingPrograss(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
