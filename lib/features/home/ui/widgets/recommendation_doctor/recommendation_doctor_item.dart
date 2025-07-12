import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorItem extends StatelessWidget {
  final int itemIndex;
  const RecommendationDoctorItem({super.key, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(bottom: 24.w),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Container(
              decoration: BoxDecoration(
                color:Colors.amber
               
              ),
              child: Image.asset(
              height: 120.h,
              width:110.w,
              'assets/imgs/doctor.png',
            ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Doctor Randy ${itemIndex + 1}',
                  style: Styles.font16DarkBlueBold,
                ),
                verticalSpace(8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Specialty ${itemIndex + 1}',
                      style: Styles.font12GreyMedium,
                    ),
                    Text('  |  ', style: Styles.font12GreyMedium),
                    Text('RSUD Gatot Subroto', style: Styles.font12GreyMedium),
                  ],
                ),
                verticalSpace(8),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16.w),
                    horizontalSpace(4.w),
                    Text('4.8', style: Styles.font12GreyMedium),
                    horizontalSpace(8.w),
                    Text('(120 reviews)', style: Styles.font12GreyMedium),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
