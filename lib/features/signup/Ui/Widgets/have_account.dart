import 'package:books_app/core/helpers/extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class Have_Account extends StatelessWidget {
  const Have_Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text("لديك حساب بالفعل؟",
          style: TextStyles.font16grey7DRegualar,
        ),
        GestureDetector(
          onTap: (){
            context.pop();
          },
          child: Text("تسجيل دخول",
            style: TextStyles.font16primaryColorBold,
          ),
        ),
      ],
    );
  }
}
