import 'package:books_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class EmailPart extends StatefulWidget {
  TextEditingController Email;
  EmailPart({super.key,required this.Email});

  @override
  State<EmailPart> createState() => _EmailPartState();
}

class _EmailPartState extends State<EmailPart> {
  @override
  FocusNode firstFocus = FocusNode();
  FocusNode secondFocus = FocusNode();
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("البريد الالكترونى",

          style: TextStyles.font14blackMedium,
        ),
        verticalSpace(10),
        AppTextFormField(hintText: "ادخل البريد الالكترونى"
          ,isObscureText: false,
          controller: widget.Email,
          onTap: (){},
          //inputTextStyle:TextStyles.font14blackMedium,
          validator: (value) {
            bool Email = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value!);
            if (!Email) {
              return "هذا الحساب غير صحيح";
            }
            else  if (value == null || value.isEmpty) {
              return "يرجى ادخال البريد الالكترونى";
            }
            return null;
          },
          readOnly: false,
          backgroundColor: ColorsManager.white,
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: ColorsManager.white,width: 1.w),
              borderRadius: BorderRadius.circular(8)
          ),
          focusedBorder: OutlineInputBorder(
            /*
                          بيحدد شكل text field لما اضغطت عليه*/
              borderSide:BorderSide(color: ColorsManager.primaryColor,width: 1.w),
              borderRadius: BorderRadius.circular(8)
          ),
          focusNode: firstFocus,
          onFieldSubmitted: (value){//استخدمتها علشان يروح على textfield اللى بعده بتاع كلمه المرور مجرد ما ادوس enter
            FocusScope.of(context).requestFocus(secondFocus);
          },
        ),
      ],
    );
  }
}
