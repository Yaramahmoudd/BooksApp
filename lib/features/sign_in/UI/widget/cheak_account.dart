import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/features/sign_in/UI/widget/password_part.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';

class CheakAccount extends StatelessWidget {
  const CheakAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text("مستخدم جديد؟",
          style: TextStyles.font16grey7DRegualar,
        ),
        GestureDetector(
          onTap: (){
            context.pushNamed(Routes.signupScreen);
          },
          child: Text("إنشاء حساب جديد",
            style: TextStyles.font16primaryColorBold,
          ),
        ),
      ],
    );
  }
}
