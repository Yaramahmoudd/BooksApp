import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    super.key, required this.bookType,
  });
  final String bookType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("أصوات الكلام", style: TextStyles.font16blackMedium),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(bookType, style: TextStyles.font14grey7DRegualar),
              Text("  |  ", style: TextStyles.font14grey7DRegualar),
              Container(
                height: 18.h,
                width: 46.w,
                decoration: BoxDecoration(
                  color: ColorsManager.beigeD6,
                  borderRadius: BorderRadius.circular(5.r),
                ),
                child: Center(
                  child: Text(
                    "مجاني",
                    style: TextStyles.font14blackRegualar,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
