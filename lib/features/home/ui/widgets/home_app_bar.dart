import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("مرحبا،", style: TextStyles.font22blackMedium),
        horizontalSpace(5),
        Text("ندي!", style: TextStyles.font22PrimaryColorBold),
        horizontalSpace(192),
        Container(
          height: 50.h,
          width: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29.r),
            border: Border.all(
              color: ColorsManager.greyF5,
              width: 1.5.w,
            ),
          ),
          child: Center(
            child: SvgPicture.asset(
              AppIcons.notification,
              height: 30.h,
              width: 30.h,
            ),
          ),
        ),
      ],
    );
  }
}
