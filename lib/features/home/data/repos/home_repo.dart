import 'package:comeback/core/networking/api_error_handler.dart';
import 'package:comeback/core/networking/api_result.dart';
import 'package:comeback/features/home/data/apis/home_api_service.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecialityResponseModel>> getSpeciality() async {
    try {
      final response = await _homeApiService.getSpeciality();

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
