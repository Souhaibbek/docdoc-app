import 'package:comeback/core/networking/api_constants.dart';
import 'package:comeback/features/login/data/models/login_request_body.dart';
import 'package:comeback/features/login/data/models/login_response.dart';
import 'package:comeback/features/signup/data/models/signup_request_body.dart';
import 'package:comeback/features/signup/data/models/signup_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio,{String baseUrl})= _ApiService;

  @POST(ApiConstants.loginEndpoint)
  Future<LoginResponse> login(
   @Body() LoginRequestBody loginRequestBody,
  );
  @POST(ApiConstants.registerEndpoint)
  Future<SignupResponse> signUp(
   @Body() SignupRequestBody signupRequestBody,
  );
}
  