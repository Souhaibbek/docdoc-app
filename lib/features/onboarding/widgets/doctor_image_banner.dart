import 'dart:ui';

import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageBanner extends StatelessWidget {
  const DoctorImageBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SvgPicture.asset('assets/svgs/back_logo.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.44],
              colors: [
                Colors.white,
                Colors.white.withValues(alpha: 0.0),
              ],
            ),
          ),
          child: Image.asset('assets/imgs/doctor.png'),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Text(
            'Best Doctor\n Appointment App',
            textAlign: TextAlign.center,
            style: Styles.font32BlueBold,
          ),
        ),
      ],
    );
  }
}
