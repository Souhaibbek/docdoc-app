
import 'package:comeback/features/home/ui/widgets/recommendation_doctor/recommendation_doctor_item.dart';
import 'package:flutter/material.dart';

class RecommendationDoctorList extends StatelessWidget {
  const RecommendationDoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return RecommendationDoctorItem(itemIndex: index,);
      },
    );
  }
}
