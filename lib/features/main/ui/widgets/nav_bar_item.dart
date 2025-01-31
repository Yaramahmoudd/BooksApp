import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavigationBarItem extends StatelessWidget {
  final String title;
  final String assetName;
  final bool isSelected;
  final Function() onTap;

  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.assetName,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(bottom: 8.h),
              height: 6.h,
              width: 80.w,
              decoration: BoxDecoration(
                  color: isSelected
                      ? ColorsManager.primaryColor
                      : ColorsManager.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r)))),
          verticalSpace(10),
          SvgPicture.asset(
            assetName,
            width: 24.w,
            height: 24.h,
            color:
                isSelected ? ColorsManager.primaryColor : ColorsManager.black,
          ),
          verticalSpace(5),
          Text(title,
              style: isSelected
                  ? TextStyles.font14primaryColorMedium
                  : TextStyles.font14blackRegualar),
        ],
      ),
    );
  }
}
