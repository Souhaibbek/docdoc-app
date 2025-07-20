import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/font_weight.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListItem extends StatelessWidget {
  final int itemIndex;
  final SpecialityData? specialityData;
  final int selectedSpecialityIndex;
  const SpecialityListItem({
    super.key,
    required this.itemIndex,
    required this.specialityData,
    required this.selectedSpecialityIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              color:
                  selectedSpecialityIndex == itemIndex
                      ? ColorsManager.mainBlue
                      : ColorsManager.lightBlue,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: CircleAvatar(
                radius: 30.r,
                backgroundColor: ColorsManager.lightBlue,
                child: Icon(
                  Icons.medical_services_sharp,
                  size: 30.sp,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
         
          Text(
            specialityData?.name ?? 'Random name',
            style: Styles.font12DarkBlueRegular.copyWith(
              color: selectedSpecialityIndex == itemIndex
                  ? ColorsManager.mainBlue
                  : ColorsManager.darkBlue,
              fontWeight: selectedSpecialityIndex==itemIndex? FontWeightHelper.bold:FontWeightHelper.regular,
            ),
          ),
        ],
      ),
    );
  }
}
