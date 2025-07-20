import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/logic/cubit/home_cubit.dart';
import 'package:comeback/features/home/ui/widgets/doctors_specialty/speciality_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecialityData?> specialityData;
  const SpecialityListView({super.key, required this.specialityData});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecialityIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specialityData.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecialityIndex = index;
              });
              context.read<HomeCubit>().getDoctorList(
                specialityId: widget.specialityData[index]?.id,
              );
            },
            child: SpecialityListItem(
              selectedSpecialityIndex: selectedSpecialityIndex,
              itemIndex: index,
              specialityData: widget.specialityData[index],
            ),
          );
        },
      ),
    );
  }
}
