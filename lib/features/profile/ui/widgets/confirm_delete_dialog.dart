import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ConfirmDeleteDialog extends StatelessWidget {
  final VoidCallback onDelete; // عند الضغط على "حذف"

  const ConfirmDeleteDialog({super.key, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: ColorsManager.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppIcons.infoCircle, height: 24.h, width: 24.w),
            horizontalSpace(5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('حذف الكتاب', style: TextStyles.font18blackMedium),
                Text('هل انت متأكد من حذف كتابك؟',
                    style: TextStyles.font16grey7DRegualar),
              ],
            )
          ],
        ),
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(ColorsManager.red),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              ))),
          onPressed: () {
            onDelete();
            context.pop();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: ColorsManager.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r)),
                margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 22.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 18.h),
                elevation: 6,
                content: Row(
                  children: [
                    SvgPicture.asset(AppIcons.correctCircle,
                        height: 24.h, width: 24.w),
                    horizontalSpace(10),
                    Text('تم حذف الكتاب بنجاح',
                        style: TextStyles.font16blackMedium),
                  ],
                ),
              ),
            );
          },
          child: Text('حذف', style: TextStyles.font16whiteMedium),
        ),
        horizontalSpace(35),
        ElevatedButton(
          style: ButtonStyle(
              elevation: MaterialStateProperty.all(0),
              backgroundColor: MaterialStateProperty.all(ColorsManager.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
                side: const BorderSide(color: ColorsManager.greyA9),
              ))),
          onPressed: () {
            context.pop();
          },
          child: Text('الغاء', style: TextStyles.font16greyA9Medium),
        ),
      ],
    );
  }
}
