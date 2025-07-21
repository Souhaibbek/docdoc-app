import 'package:comeback/core/helpers/constants.dart';
import 'package:comeback/core/helpers/shared_pref_helper.dart';
import 'package:comeback/core/networking/dio_factory.dart';
import 'package:comeback/features/login/data/models/login_request_body.dart';
import 'package:comeback/features/login/data/repos/login_repo.dart';
import 'package:comeback/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.loginInitial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  emitLoginStates() async {
    emit(LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) {
        // Save the auth token to shared preferences
        saveAuthToken(loginResponse.userData!.token ?? '');
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (apiErrorModel) {
        emit(
          LoginState.loginError(
            apiErrorModel,
          ),
        );
      },
    );
  }

  Future<void> saveAuthToken(String token) async {
    // Save the auth token to shared preferences
    await SharedPrefHelper.setSecuredString(SharedPrefKeys.authToken, token);
    debugPrint('Auth token saved');
    // Update the Dio headers with the new token
    DioFactory.setTokenAfterLogin(token);
  }
}
