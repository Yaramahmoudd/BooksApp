import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        debugPrint('search');
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        height: 55.h,
        width: 343.h,
        decoration: BoxDecoration(
          color: ColorsManager.greyF4,
          border: Border.all(
            color: ColorsManager.greyF4,
            width: 1.5.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Row(
          children: [
            SvgPicture.asset(AppIcons.search),
            SizedBox(width: 10.w),
            Text(
              'ابحث عن كتابك',
              style: TextStyles.font16grey7DRegualar,
            ),
          ],
        ),
      ),
    );
  }
}
