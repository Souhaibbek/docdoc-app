import 'package:comeback/core/networking/api_error_handler.dart';
import 'package:comeback/core/networking/api_result.dart';
import 'package:comeback/core/networking/api_service.dart';
import 'package:comeback/features/signup/data/models/signup_request_body.dart';
import 'package:comeback/features/signup/data/models/signup_response.dart';

class SignUpRepo {
  final ApiService _apiService;
  SignUpRepo(this._apiService);
  Future<ApiResult<SignupResponse>> signUp(
    SignupRequestBody signUpRequestBody,
  ) async {
    try {
      final response = await _apiService.signUp(signUpRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handle(e));
    }
  }
}
