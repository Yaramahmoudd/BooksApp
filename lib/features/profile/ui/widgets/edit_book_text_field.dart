import 'package:books_app/core/helpers/spacing.dart';
import 'package:books_app/core/theming/styles.dart';
import 'package:books_app/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditBookTextField extends StatelessWidget {
  const EditBookTextField({
    super.key,
    required this.title,
    required this.hinttext,
    required this.initVal,
    this.maxlines,
    this.suffixIcon,
  });
  final String title;
  final String hinttext;
  final String initVal;
  final int? maxlines;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyles.font16blackMedium,
        ),
        verticalSpace(8),
        AppTextFormField(
          hintText: hinttext,
          initialVal: initVal,
          maxLines: maxlines,
          suffixIcon: suffixIcon,
          borderRadius: 12.r,
        ),
      ],
    );
  }
}
