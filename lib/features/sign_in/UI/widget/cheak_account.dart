import 'package:books_app/core/theming/styles.dart';
import 'package:flutter/material.dart';

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
        Text("إنشاء حساب جديد",
          style: TextStyles.font16primaryColorBold,
        ),
      ],
    );
  }
}
