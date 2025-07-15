import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/ui/widgets/recommendation_doctor/recommendation_doctor_item.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorList extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const RecommendationDoctorList({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: doctorsList?.length,
      itemBuilder: (context, index) {
        return RecommendationDoctorItem(doctorsModel: doctorsList![index]);
      },
    );
  }
}
