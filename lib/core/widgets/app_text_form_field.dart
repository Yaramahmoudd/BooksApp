import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/colors.dart';
import '../theming/styles.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final double? borderRadius;
  final Widget? prefexIcon;
  final bool? readOnly;
  final VoidCallback? onTap;
  final Function(String)? onFieldSubmitted;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.controller,
    this.validator,
    this.onTap,
    this.onFieldSubmitted,
    this.readOnly,
    this.borderRadius,
    this.prefexIcon, this.focusNode,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      readOnly: readOnly ?? false,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(left: 10.w, right: 10.w, bottom: 25.h,),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.green,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.0.r),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(
                color: ColorsManager.green,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.0.r),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.0.r),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.0.r),
        ),
        hintStyle: hintStyle ?? TextStyles.font12grey7DRegualar,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefexIcon,
        fillColor: backgroundColor ?? ColorsManager.green,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14blackMedium,
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return "Must not be empty";
            }
            return null;
          },
    );
  }
}
