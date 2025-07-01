import 'package:comeback/core/networking/api_service.dart';
import 'package:comeback/core/networking/dio_factory.dart';
import 'package:comeback/features/login/data/repos/login_repo.dart';
import 'package:comeback/features/login/logic/cubit/login_cubit.dart';
import 'package:comeback/features/signup/data/repos/signup_repo.dart';
import 'package:comeback/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio and ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // Login feature
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));
  // Signup feature
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt<ApiService>()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepo>()));
}
