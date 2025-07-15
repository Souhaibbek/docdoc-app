
import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityItem extends StatelessWidget {
  final int itemIndex;
  final SpecialityData? specialityData;
  const DoctorSpecialityItem({
    super.key, required this.itemIndex, required this.specialityData,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: ColorsManager.lightBlue,
            child: Icon(
              Icons.medical_services,
              size: 30.sp,
              color: Colors.blueAccent,
            ),
          ),
        Spacer(),
          Text(
            specialityData?.name ?? 'Random name',
            style: Styles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
