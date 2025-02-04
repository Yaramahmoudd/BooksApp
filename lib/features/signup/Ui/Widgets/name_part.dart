import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/colors.dart';
import 'package:books_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/styles.dart';

class NamePart extends StatefulWidget {
  TextEditingController Name;
   NamePart({super.key,
   required this.Name
   });

  @override
  State<NamePart> createState() => _NamePartState();
}

class _NamePartState extends State<NamePart> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("الإسم",
          style:TextStyles.font16blackMedium
        ),
        verticalSpace(10),
        AppTextFormField(hintText: "ادخل اسمك",
        hintStyle: TextStyles.font14greyA9Regualar,
        isObscureText: false,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: ColorsManager.white)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: ColorsManager.primaryColor)
        ),
        backgroundColor: ColorsManager.white,
          validator: (value){
           if(value==null || value.isEmpty){
             return "يرجى ادخال اسم المستخدم";
           }
          },
        )
      ],
    );
  }
}
