import 'package:books_app/books_app.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class PasswordPart extends StatefulWidget {
  TextEditingController Password;
  PasswordPart({super.key, required this.Password});

  @override
  State<PasswordPart> createState() => _PasswordPartState();
}

class _PasswordPartState extends State<PasswordPart> {
  bool issecure = true;
  bool IsCheak = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "كلمة المرور",
          style: TextStyles.font16blackMedium,
        ),
        verticalSpace(10),
        AppTextFormField(
          hintText: "ادخل كلمه المرور",
          isObscureText: issecure,
          controller: widget.Password,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: ColorsManager.white, width: 1.w)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
              BorderSide(color: ColorsManager.primaryColor, width: 1.w)),
          backgroundColor: ColorsManager.white,
          suffixIcon: IconButton(
              onPressed: () {
                issecure = !issecure;
                setState(() {});
              },
              icon: issecure
                  ? Icon(
                Icons.visibility_off_outlined,
                size: 16,
                color: ColorsManager.grey7D,
              )
                  : Icon(Icons.visibility_outlined,
                  size: 16, color: ColorsManager.grey7D)),
          inputTextStyle: TextStyles.font14blackRegualar,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "يرجى ادخال كلمة المرور";
            }
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  value: IsCheak,
                  onChanged: (value) {
                    IsCheak = value!;
                    setState(() {});
                  },
                  activeColor: ColorsManager.primaryColor,
                  side:
                  BorderSide(color: ColorsManager.primaryColor, width: 1.w),
                  checkColor: ColorsManager.white,
                ),
                Text(
                  "تذكرني",
                  style: TextStyles.font12primaryColorRegualar,
                )
              ],
            ),
            Text(
              "هل نسيت كلمة المرور؟",
              style: TextStyles.font12grey7DRegualar,
            )
          ],
        )
      ],
    );
  }
}
