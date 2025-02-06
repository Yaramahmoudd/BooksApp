import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class NewPasswordAppBarScreen extends StatelessWidget {
  const NewPasswordAppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: ColorsManager.white,
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
                Text("إنشاء كلمة مرور جديدة",
                  style: TextStyles.font22blackMedium,
                ),
                horizontalSpace(20),
                Text("أنشئ كلمة مرور لحماية حسابك.",
                  style: TextStyles.font16grey7DRegualar,
                )
              ],
            ),
          ),
          horizontalSpace(30),
          Padding(
            padding:  EdgeInsets.only(
              //top: 5.h,
              left: 10.w
            ),
            child: Container(
              width: 40.w,
              height: 40.h,
              child: IconButton(
                  onPressed: (){
                    context.pop();
                  },
                  icon:Icon(Icons.arrow_forward,size: 30,color: ColorsManager.black,)
              ),
            ),
          ),
        ],
      ),
      leading: SizedBox(),
    );
  }
}
