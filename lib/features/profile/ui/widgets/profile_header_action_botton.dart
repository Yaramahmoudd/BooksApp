import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileHeaderActionBotton extends StatelessWidget {
  const ProfileHeaderActionBotton({
    super.key,
    required this.onTap,
    required this.text,
  });
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40.h,
        width: 157.w,
        decoration: BoxDecoration(
          color: ColorsManager.greyF4,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Center(
          child: Text(text, style: TextStyles.font16grey7DMedium),
        ),
      ),
    );
  }
}
