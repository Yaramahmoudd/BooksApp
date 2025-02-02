import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/features/profile/ui/components/edit_book_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BooksTabView extends StatelessWidget {
  const BooksTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            EdgeInsets.only(right: 15.w, left: 15.w, top: 20.h, bottom: 3.h),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 12.h,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      width: 165.w,
                      height: 195.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          image: const DecorationImage(
                            image: AssetImage(AppImages.bookCover),
                          )),
                    ),
                    onTap: () => showEditBookMenu(context),
                  );
                },
              ),
            ),
            //todo : is adding book is fixed or appear after finish gridview ??
            Container(
              margin: EdgeInsets.only(bottom: 45.h, top: 12.h),
              padding: EdgeInsets.symmetric(vertical: 18.h),
              width: double.infinity,
              height: 95.h,
              decoration: BoxDecoration(
                color: ColorsManager.beigeF2,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                children: [
                  Text('إضافة كتاب',
                      style: TextStyles.font18primaryColorMedium),
                  SvgPicture.asset(
                    AppIcons.addCircle,
                    height: 24.h,
                    width: 24.w,
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
