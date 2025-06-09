import 'package:comeback/core/helpers/extension.dart';
import 'package:comeback/core/routing/routes.dart';
import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushNamed(Routes.login);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStatePropertyAll<Size>(Size(double.infinity, 52.h),),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      ),
      child: Center(
        child: Text(
          'Get Started',
          style: Styles.font16WhiteSemiBold,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
