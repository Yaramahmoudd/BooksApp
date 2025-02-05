import 'package:books_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class ForgetPasswordAppBar extends StatelessWidget {
  const ForgetPasswordAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsManager.white,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      flexibleSpace:Row(
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
                  "نسيت كلمة المرور",
                  style: TextStyles.font22blackBold,
                ),
                verticalSpace(10),
                Text(
                  "أدخل بريدك الإلكتروني لإعادة تعيين\n        كلمة المرور الخاصة بك.",
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
      leading:SizedBox()
    );
  }
}
