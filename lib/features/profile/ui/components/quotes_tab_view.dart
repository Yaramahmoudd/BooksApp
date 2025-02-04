import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class QuotesTabView extends StatelessWidget {
  const QuotesTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 15.w),
      child: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  height: 93.h,
                  decoration: BoxDecoration(
                    color: ColorsManager.greyF4,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(AppIcons.quoteDownColored,
                          height: 16, width: 16),
                      verticalSpace(5),
                      Text(
                        'إنما السعادة الكاملة هي في إدراك الحق، والعمل به، و السير على هديه في جميع الأحوال.',
                        style: TextStyles.font14blackRegualar,
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: ColorsManager.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r)),
                          title: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 10.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(AppIcons.infoCircle,
                                    height: 20.h, width: 20.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('حذف اقتباس',
                                        style: TextStyles.font18blackMedium),
                                    Text('هل انت متأكد من حذف اقتباسك؟',
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
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorsManager.red),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                  ))),
                              onPressed: () {
                                // onDelete();
                                context.pop();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: ColorsManager.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.r)),
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
                                        Text('تم حذف الكتاب بنجاح',
                                            style:
                                                TextStyles.font16blackMedium),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: Text('حذف',
                                  style: TextStyles.font16whiteMedium),
                            ),
                            horizontalSpace(35),
                            ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(0),
                                  backgroundColor: MaterialStateProperty.all(
                                      ColorsManager.white),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.r),
                                    side: const BorderSide(
                                        color: ColorsManager.greyA9),
                                  ))),
                              onPressed: () {
                                context.pop();
                              },
                              child: Text('الغاء',
                                  style: TextStyles.font16greyA9Medium),
                            ),
                          ],
                        );
                        ;
                      },
                    );
                  },
                  child: SvgPicture.asset(AppIcons.trash,
                      height: 20.h, width: 20.w)),
            ],
          );
        },
      ),
    );
  }
}
