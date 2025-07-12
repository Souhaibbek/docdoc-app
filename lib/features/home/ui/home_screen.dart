import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/features/home/ui/widgets/doctor_specialty/doctor_speciality_list.dart';
import 'package:comeback/features/home/ui/widgets/doctor_specialty/doctor_speciality_title.dart';
import 'package:comeback/features/home/ui/widgets/home_blue_banner.dart';
import 'package:comeback/features/home/ui/widgets/home_top_bar.dart';
import 'package:comeback/features/home/ui/widgets/recommendation_doctor/recommendation_doctor_list.dart';
import 'package:comeback/features/home/ui/widgets/recommendation_doctor/recommendation_doctor_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20.w, 16.h, 20.w, 28.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTopBar(),
                verticalSpace(24),
                HomeBlueBanner(),
                verticalSpace(24),
                DoctorSpecialityTitle(),
                verticalSpace(16),
                DoctorSpecialityList(),
                verticalSpace(24),
                RecommendationDoctorTitle(),
                verticalSpace(16),
                RecommendationDoctorList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
