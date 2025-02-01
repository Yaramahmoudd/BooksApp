import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.categoryName,
    required this.isSelected,
  });
  final String categoryName;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.w,
          vertical: 8.h,
        ),
        height: 36.h,
        decoration: BoxDecoration(
          color: isSelected ? ColorsManager.primaryColor : ColorsManager.greyF4,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(
            categoryName,
            style: isSelected
                ? TextStyles.font16whiteMedium
                : TextStyles.font16grey7DRegualar,
          ),
        ),
      ),
    );
  }
}
