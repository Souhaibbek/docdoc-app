
import 'package:comeback/core/networking/api_error_handler.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';
@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Speciality states
  const factory HomeState.specialityLoading() = SpecialityLoading;
  const factory HomeState.specialitySuccess(
     List<SpecialityData?>? specialityDataList,
  ) = SpecialitySuccess;
  const factory HomeState.specialityFailure(
   ErrorHandler errorHandler) = SpecialityFailure;
}
