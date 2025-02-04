import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/helpers/strings/app_images.dart';
import 'package:books_app/core/routing/routes.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/features/profile/ui/widgets/confirm_delete_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

void showEditBookMenu(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Stack(
        children: [
          Container(color: Colors.grey.withAlpha(80)),
          Positioned(
            left: MediaQuery.of(context).size.width / 2 - 120.w,
            top: MediaQuery.of(context).size.height / 5.3,
            child: Material(
              color: ColorsManager.white,
              elevation: 10,
              borderRadius: BorderRadius.circular(5),
              child: Container(
                width: 240.w,
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 296.h,
                      width: 242.w,
                      decoration: BoxDecoration(
                        color: ColorsManager.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(AppImages.bookCover),
                    ),
                    ListTile(
                      title: Row(children: [
                        SvgPicture.asset(AppIcons.editInbox),
                        horizontalSpace(8),
                        Text(
                          'تعديل',
                          style: TextStyles.font16blackMedium,
                        ),
                      ]),
                      onTap: () {
                        context.pushReplacementNamed(Routes.editBookScreen);
                      },
                    ),
                    ListTile(
                      title: Row(children: [
                        SvgPicture.asset(AppIcons.export),
                        horizontalSpace(8),
                        Text('مشاركة', style: TextStyles.font16blackMedium),
                      ]),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Row(
                        children: [
                          SvgPicture.asset(AppIcons.trash,
                              color: ColorsManager.red),
                          horizontalSpace(8),
                          Text('حذف الكتاب', style: TextStyles.font16redMedium),
                        ],
                      ),
                      onTap: () {
                        context.pop();
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return ConfirmDeleteDialog(onDelete: () {});
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
