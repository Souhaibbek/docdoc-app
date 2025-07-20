import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String hintText;
  final EdgeInsets? contentPadding;
  final TextStyle? contentStyle;
  final TextStyle? hintStyle;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final bool? isObscureText;
  final TextEditingController? controller;
  final Function(String?) validator;

  const AppTextFormField({
    super.key,
    required this.hintText,
    this.contentPadding,
    this.contentStyle,
    this.hintStyle,
    this.focusedBorder,
    this.enabledBorder,
    this.suffixIcon,
    this.backgroundColor,
    this.isObscureText,
    this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      decoration: InputDecoration(
        hintStyle: hintStyle ?? Styles.font14LightGreyMedium,
        hintText: hintText,
        suffixIcon: suffixIcon,
        isDense: true,
        filled: true,
        fillColor: backgroundColor ?? ColorsManager.moreLightGreyColor,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 18.0),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: ColorsManager.mainBlue, width: 1.3),
            ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(
                color: ColorsManager.lightGrey,
                width: 1.3,
              ),
            ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.red, width: 1.3),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.red, width: 1.3),
        ),
      ),

      obscureText: isObscureText ?? false,
      style: contentStyle ?? Styles.font14DarkBlueMedium,
    );
  }
}
