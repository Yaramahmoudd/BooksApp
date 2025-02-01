import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/features/profile/ui/widgets/profile_header_action_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PreofileHeaderBar extends StatelessWidget {
  const PreofileHeaderBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.w, left: 15.w, top: 40.h),
          child: Center(
            child: CircleAvatar(
              radius: 42.r,
              child: Image.asset(AppImages.girl),
            ),
          ),
        ),
        verticalSpace(12),
        Text('الاسم', style: TextStyles.font18primaryColorBold),
        verticalSpace(20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileHeaderActionBotton(onTap: () {}, text: 'مشاركة الحساب'),
              ProfileHeaderActionBotton(onTap: () {}, text: 'تعديل بياناتك'),
            ],
          ),
        ),
      ],
    );
  }
}
