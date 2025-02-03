import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/widgets/custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordBeiges extends StatelessWidget {
  const ForgetPasswordBeiges({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 174.h,
        width: 196.w,
        child: Stack(
          children: [
            CustomSvg(imgPath: AppIcons.beiges,
            ),
          ],
        ),
      ),
    );
  }
}
