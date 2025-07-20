import 'package:comeback/core/helpers/extension.dart';
import 'package:comeback/core/networking/api_error_handler.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:comeback/features/home/data/repos/home_repo.dart';
import 'package:comeback/features/home/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  List<SpecialityData?>? specialityDataList = [];
  HomeCubit(this._homeRepo) : super(HomeState.initial());

  Future<void> fetchSpeciality() async {
    emit(HomeState.specialityLoading());
    final response = await _homeRepo.getSpeciality();
    response.when(
      success: (specialityResponseModel) {
        specialityDataList = specialityResponseModel.specialityDataList;
        // Get by default the first speciality's doctors list
        getDoctorList(specialityId: specialityDataList?.first?.id);
        emit(HomeState.specialitySuccess(specialityDataList));
      },
      failure: (errorHandler) {
        emit(HomeState.specialityFailure(errorHandler));
      },
    );
  }

  void getDoctorList({required int? specialityId}) {
    List<Doctors?>? doctorsList = getDoctorsListbySpecialityId(specialityId);
    if (doctorsList.isNullOrEmpty) {
      emit(
        HomeState.doctorsFailure(
          ErrorHandler.handle('No doctors found for this speciality'),
        ),
      );
    } else {
      emit(HomeState.doctorsSuccess(doctorsList));
    }
  }

  getDoctorsListbySpecialityId(int? specialityId) {
    return specialityDataList
        ?.firstWhere((specialityItem) => specialityItem?.id == specialityId)
        ?.doctorsList;
  }
}
