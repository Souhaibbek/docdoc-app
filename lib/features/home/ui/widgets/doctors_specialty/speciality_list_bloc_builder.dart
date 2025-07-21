import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/networking/api_error_model.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/logic/cubit/home_cubit.dart';
import 'package:comeback/features/home/logic/cubit/home_state.dart';
import 'package:comeback/features/home/ui/widgets/doctors_list/doctors_shimmer_loading.dart';
import 'package:comeback/features/home/ui/widgets/doctors_specialty/speciality_list.dart';
import 'package:comeback/features/home/ui/widgets/doctors_specialty/speciality_shimmer_loading.dart';
import 'package:comeback/features/home/ui/widgets/doctors_specialty/speciality_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecialityListBlocBuilder extends StatelessWidget {
  const SpecialityListBlocBuilder({super.key});

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
          specialityFailure: (apiErrorModel) => setupFailure(apiErrorModel),
        );
      },
    );
  }
}

// OrElse
Widget setupOrElse() => const SizedBox.shrink();
// Loading
Widget setupLoading() => Column(
  children: [
    SpecialityShimmerLoading(),
    verticalSpace(16),
    DoctorsShimmerLoading(),
  ],
);
// Failure
Widget setupFailure(ApiErrorModel apiErrorModel) => Center(
  child: Text(
    apiErrorModel.getAllErrorsMessage(),
    style: TextStyle(color: Colors.red),
  ),
);
// Success
Widget setupSuccess(List<SpecialityData?>? specialityDataList) => Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const SpecialityTitle(),
    verticalSpace(16),
    SpecialityListView(specialityData: specialityDataList ?? []),
  ],
);
