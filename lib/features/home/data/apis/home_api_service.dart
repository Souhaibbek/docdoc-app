import 'package:comeback/core/networking/api_constants.dart';
import 'package:comeback/features/home/data/apis/home_api_constants.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'home_api_service.g.dart';
@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

@GET(HomeApiConstants.specialityEndpoint)
Future<SpecialityResponseModel> getSpeciality();

  
}