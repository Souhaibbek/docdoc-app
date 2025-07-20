import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hi, Souhaib!', style: Styles.font18DarkBlueBold),
            Text('How Are you Today?', style: Styles.font11UltraGreyRegular),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24.0.r,
          backgroundColor: ColorsManager.moreLighterGreyColor,
          child: SvgPicture.asset(
            'assets/svgs/notifications.svg',
          ),
        ),
      ],
    );
  }
}
