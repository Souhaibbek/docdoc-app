

import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class DoctorsShimmerLoading extends StatelessWidget {
  const DoctorsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              Shimmer.fromColors(
                baseColor: ColorsManager.lightGrey,
                highlightColor: Colors.white,
                child: Container(
                  width: 110.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.white,
                  ),
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Shimmer.fromColors(
                      baseColor: ColorsManager.lightGrey,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 18.h,
                        width: 180.w,
                        decoration: BoxDecoration(
                          color: ColorsManager.lightGrey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    verticalSpace(12),
                    Shimmer.fromColors(
                      baseColor: ColorsManager.lightGrey,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 14.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: ColorsManager.lightGrey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    verticalSpace(12),
                    Shimmer.fromColors(
                      baseColor: ColorsManager.lightGrey,
                      highlightColor: Colors.white,
                      child: Container(
                        height: 14.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: ColorsManager.lightGrey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}