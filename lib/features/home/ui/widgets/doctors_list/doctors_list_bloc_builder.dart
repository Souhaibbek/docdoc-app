import 'package:comeback/core/networking/api_error_handler.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/logic/cubit/home_cubit.dart';
import 'package:comeback/features/home/logic/cubit/home_state.dart';
import 'package:comeback/features/home/ui/widgets/doctors_list/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsListBlocBuilder extends StatelessWidget {
  const DoctorsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is DoctorsSuccess || current is DoctorsFailure,
      builder: (BuildContext context, HomeState state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          doctorsSuccess: (doctorsList) => setupSuccess(doctorsList),
          doctorsFailure: (errorHandler) => Center(
            child: Text(
              errorHandler.apiErrorModel.message ?? 'An error occurred',
              style: TextStyle(color: Colors.red),
            ),
          ),
        );
      },
    );
  }
}
//setup failure
Widget setupFailure(ErrorHandler errorHandler) {
  return Center(
    child: Text(
      errorHandler.apiErrorModel.message ?? 'An error occurred',
      style: TextStyle(color: Colors.red),
    ),
  );
}
//setupSuccess
setupSuccess(List<Doctors?>? doctorsList) {
 
  return DoctorsList(doctorsList: doctorsList);
}

