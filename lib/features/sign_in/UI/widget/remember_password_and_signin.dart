import 'package:books_app/books_app.dart';
import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/features/sign_in/UI/screen/forgetPassword_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class RememberPasswordAndSignin extends StatelessWidget {
  const RememberPasswordAndSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.h,
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("تذكرت كلمة المرور؟ ",
          style:TextStyles.font16grey7DRegualar,
          ),
          GestureDetector(
            onTap: (){
              context.pop();
            },
            child: Text("تسجيل الدخول",
            style: TextStyles.font16primaryColorBold,
            ),
          ),
        ],
      ),
    );
  }
}
