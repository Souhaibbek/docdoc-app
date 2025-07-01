import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocLogoBanner extends StatelessWidget {
  const DocLogoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/svgs/logo.svg',
          width: 38.w,
          height: 38.h,
        ),
        SizedBox(width: 10.w),
        Text(
          'Docdoc',
          style: Styles.font24BlackBold,
        ),

      ],
    );
  }
}