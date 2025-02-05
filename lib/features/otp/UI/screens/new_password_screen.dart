import 'package:books_app/core/helpers/extensions.dart';
import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/helpers/strings/app_icons.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/widgets/app_text_button.dart';
import 'package:books_app/core/widgets/custom_svg.dart';
import 'package:books_app/features/signup/Ui/Widgets/new_password_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';
import '../widgets/new_password_app_bar_screen.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController Password=TextEditingController();
  TextEditingController Confirm_password=TextEditingController();
  GlobalKey<FormState>FormKey=GlobalKey<FormState>();
  @override
  void dispose(){
    super.dispose();
    Password.dispose();
    Confirm_password.dispose();
  }
  void initState(){
    super.initState();
    Password.addListener((){
      setState(() {});
    });
    Confirm_password.addListener((){
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:TextDirection.rtl,
      child: Scaffold(
         appBar: PreferredSize(
             preferredSize:Size.fromHeight(200),
             child:NewPasswordAppBarScreen()
         ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
              child: Form(
                key: FormKey,
                child: Column(
                  children: [
                    Center(
                      child: CustomSvg(imgPath: AppIcons.new_password_beige),
                    ),
                    verticalSpace(35),
                    NewPasswordPart(Password: Password, text: "كلمة المرور الجديدة"),
                    verticalSpace(20),
                    NewPasswordPart(Password: Confirm_password, text: "تأكيد كلمة المرور الجديدة"),
                    verticalSpace(50),
                    AppTextButton(
                        buttonText: "حفظ",
                        textStyle: TextStyles.font16whiteBold,
                        onPressed: (){
                          if(FormKey.currentState!.validate()){
                            if(Password.text!=Confirm_password.text){
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content:
                                  Text("كلمة المرور غير متطابقه",
                                    style:TextStyles.font16whiteBold,
                                  ),
                                  backgroundColor: ColorsManager.primaryColor,
                                  )
                              );
                            }
                            else {
                              context.pushReplacementNamed(
                                  Routes.confirempasseord);
                            }
                          }
                        },
                      backgroundColor: ColorsManager.primaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
