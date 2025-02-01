import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReadingPrograss extends StatelessWidget {
  const ReadingPrograss({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        "60% ",
        style: TextStyles.font14primaryColorMedium,
      ),
      Stack(
        children: [
          Container(
            height: 4.h,
            width: 115.w,
            decoration: BoxDecoration(
              color: ColorsManager.white,
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
          Container(
            height: 4.h,
            width: 70.w,
            decoration: BoxDecoration(
              color: ColorsManager.primaryColor,
              borderRadius: BorderRadius.circular(5.r),
            ),
          ),
        ],
      ),
    ]);
  }
}
