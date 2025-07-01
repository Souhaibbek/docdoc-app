import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/features/onboarding/widgets/doc_logo_banner.dart';
import 'package:comeback/features/onboarding/widgets/doctor_image_banner.dart';
import 'package:comeback/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                DocLogoBanner(),
                SizedBox(height: 30.h),
                DoctorImageBanner(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: Styles.font14GreyRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30.h),
                      GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
