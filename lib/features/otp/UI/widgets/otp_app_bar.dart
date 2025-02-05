import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/features/sign_in/UI/screen/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class OtpAppBar extends StatelessWidget {
  const OtpAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 60.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "أدخل الكود",
                  style: TextStyles.font22blackBold,
                ),
                verticalSpace(10),
                Text(
                  "أرسلنا لك الكود على البريد الالكتروني\n                   الخاص بك",
                  style: TextStyles.font16grey7DRegualar,
                )
              ],
            ),
          ),
          horizontalSpace(30),
          Padding(
            padding:  EdgeInsets.only(
              left: 10.h
            ),
            child: Container(
              height: 40.h,
              width: 40.w,
              child: IconButton(
                  onPressed: () {
                    context.pop();
                  },
                  icon: Icon(
                    Icons.arrow_forward,
                    size: 35,
                    color: ColorsManager.black,
                  )),
            ),
          ),
        ],
      ),
      leading: SizedBox(),
    );
  }
}
