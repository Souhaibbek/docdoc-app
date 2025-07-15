
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/ui/widgets/doctor_specialty/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityList extends StatelessWidget {
  final List<SpecialityData?> specialityData;
  const DoctorSpecialityList({super.key, required this.specialityData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specialityData.length,
        itemBuilder: (context, index) {
          return DoctorSpecialityItem(itemIndex: index, specialityData: specialityData[index]);
        },
      ),
    );
  }
}
