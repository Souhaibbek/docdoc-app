import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/ui/widgets/doctors_list/doctors_list_item.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
  final List<Doctors?>? doctorsList;
  const DoctorsList({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: doctorsList?.length,
      itemBuilder: (context, index) {
        return DoctorsListItem(doctorsModel: doctorsList![index]);
      },
    );
  }
}
