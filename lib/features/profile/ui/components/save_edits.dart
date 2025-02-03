import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SaveEdits extends StatelessWidget {
  const SaveEdits({
    super.key,
    required this.progress,
  });

  final int progress;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        content: Container(
          padding: EdgeInsets.only(right: 20.w, left: 20.w, top: 20.h),
          height: 300.h,
          width: 350.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 120.h,
                width: 120.w,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CircularProgressIndicator(
                      value: progress / 100,
                      strokeWidth: 6,
                      backgroundColor: ColorsManager.greyF5,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          ColorsManager.primaryColor),
                    ),
                    Center(
                      child: Text(
                        "${progress.toInt()}%",
                        textAlign: TextAlign.center,
                        style: TextStyles.font24primaryColorRegular,
                      ),
                    ),
                  ],
                ),
              ),
              verticalSpace(30),
              Text("يتم حفظ التعديلات",
                  style: TextStyles.font16primaryColorBold),
              const Spacer(),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text('الغاء', style: TextStyles.font16blackMedium),
                      onPressed: () {
                        context.pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: ColorsManager.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.r)),
                            margin: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 22.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 18.h),
                            elevation: 6,
                            content: Row(
                              children: [
                                SvgPicture.asset(AppIcons.correctCircle,
                                    height: 24.h, width: 24.w),
                                horizontalSpace(10),
                                Text('تم حفظ تعديلاتك بنجاح.',
                                    style: TextStyles.font16blackMedium),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
