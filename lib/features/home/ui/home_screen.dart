import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/features/home/ui/widgets/doctors_list/doctor_list_title.dart';
import 'package:comeback/features/home/ui/widgets/doctors_list/doctors_list_bloc_builder.dart';
import 'package:comeback/features/home/ui/widgets/home_blue_banner.dart';
import 'package:comeback/features/home/ui/widgets/home_top_bar.dart';
import 'package:comeback/features/home/ui/widgets/doctors_specialty/speciality_list_bloc_builder.dart';
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
                const HomeTopBar(),
                verticalSpace(24),
                const HomeBlueBanner(),
                verticalSpace(24),
                const SpecialityListBlocBuilder(),
                verticalSpace(24),
                const DoctorsTitle(),
                verticalSpace(16),
                const DoctorsListBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
