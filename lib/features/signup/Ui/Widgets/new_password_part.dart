import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/widgets/app_text_form_field.dart';

class NewPasswordPart extends StatefulWidget {
  TextEditingController Password;
  String text;
  NewPasswordPart({super.key, required this.Password,required this.text});

  @override
  State<NewPasswordPart> createState() => _NewPasswordPartState();
}

class _NewPasswordPartState extends State<NewPasswordPart> {
  bool issecure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(
      widget.text,
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
        inputTextStyle: TextStyles.font22blackMedium,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "يرجى ادخال كلمة المرور";
          }
        },
      ),
    ]);
  }
}
