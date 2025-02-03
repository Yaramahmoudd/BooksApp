import 'package:books_app/books_app.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/custom_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';

class SocialAuth extends StatelessWidget {
  const SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text("أو",
            style: TextStyles.font16blackRegualar,
          ),
          verticalSpace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: CustomSvg(imgPath:AppIcons.apple),
                height: 54.h,
              ),
              Container(
                child: CustomSvg(imgPath:AppIcons.google),
                height: 54.h,
              ),
              Container(
                child: CustomSvg(imgPath:AppIcons.facebook),
                height: 54.h,
              ),
            ],
          )
        ],
      ),
    );
  }
}
