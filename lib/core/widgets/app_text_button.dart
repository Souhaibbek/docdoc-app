import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final double? borderRadius;
  final double? width;
  final double? height;

  const AppTextButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
    this.textStyle,
    this.padding,
    this.borderRadius,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? ColorsManager.mainBlue,
        ),
        padding: WidgetStateProperty.all(
          padding ?? EdgeInsets.symmetric(horizontal: 12.0.h, vertical: 14.0.w),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
          ),
        ),
        minimumSize: WidgetStateProperty.all(
          Size(width?.w ?? double.maxFinite, height?.h ?? 50.h),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: textStyle ??Styles.font16WhiteSemiBold,
            
      ),
    );
  }
}
