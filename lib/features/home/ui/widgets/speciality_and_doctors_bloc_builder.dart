import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/networking/api_error_handler.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/logic/cubit/home_cubit.dart';
import 'package:comeback/features/home/logic/cubit/home_state.dart';
import 'package:comeback/features/home/ui/widgets/doctor_specialty/doctor_speciality_list.dart';
import 'package:comeback/features/home/ui/widgets/doctor_specialty/doctor_speciality_title.dart';
import 'package:comeback/features/home/ui/widgets/recommendation_doctor/recommendation_doctor_list.dart';
import 'package:comeback/features/home/ui/widgets/recommendation_doctor/recommendation_doctor_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecialityAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecialityLoading ||
              current is SpecialitySuccess ||
              current is SpecialityFailure,

      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => setupOrElse(),
          specialityLoading: () => setupLoading(),
          specialitySuccess:
              (specialityDataList) => setupSuccess(specialityDataList),
          specialityFailure: (errorHandler) => setupFailure(errorHandler),
        );
      },
    );
  }
}

// OrElse
Widget setupOrElse() => Center(child: Text('No data available'));
// Loading
Widget setupLoading() => const SizedBox(
  height: 100,
  child: Center(child: CircularProgressIndicator()),
);
// Failure
Widget setupFailure(ErrorHandler errorHandler) => Center(
  child: Text(
    errorHandler.apiErrorModel.message ?? 'An error occurred',
    style: TextStyle(color: Colors.red),
  ),
);
// Success
Widget setupSuccess(List<SpecialityData?>? specialityDataList) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const DoctorSpecialityTitle(),
    verticalSpace(16),
    DoctorSpecialityList(specialityData: specialityDataList ?? []),
    verticalSpace(24),
    const RecommendationDoctorTitle(),
    verticalSpace(16),
    RecommendationDoctorList(doctorsList: specialityDataList?[0]?.doctorsList),
  ],
);
