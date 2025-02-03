// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  final String? hintText;
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
  final String? initialVal;
  final int? maxLines;
  final Widget? label;
  final Color? borderColor;
  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    this.borderRadius,
    this.prefexIcon,
    this.readOnly,
    this.onTap,
    this.onFieldSubmitted,
    this.controller,
    this.validator,
    this.focusNode,
    this.initialVal,
    this.maxLines,
    this.label,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialVal,
      onTap: onTap,
      readOnly: readOnly ?? false,
      onFieldSubmitted: onFieldSubmitted,
      controller: controller,
      focusNode: focusNode,
      cursorColor: ColorsManager.primaryColor,
      cursorHeight: 25.h,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              left: 10.w,
              right: 10.w,
              bottom: 25.h,
            ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? ColorsManager.primaryColor,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(borderRadius?.r ?? 16.0.r),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? ColorsManager.primaryColor,
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
        hintStyle: hintStyle ?? TextStyles.font14blackRegualar,
        hintText: hintText,
        suffixIcon: suffixIcon,
        label: label,
        prefixIcon: prefexIcon,
        fillColor: backgroundColor ?? ColorsManager.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14blackRegualar,
      maxLines: maxLines,
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
