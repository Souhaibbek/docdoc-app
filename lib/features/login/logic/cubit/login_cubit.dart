import 'package:comeback/core/networking/api_result.dart';
import 'package:comeback/features/login/data/models/login_request_body.dart';
import 'package:comeback/features/login/data/repos/login_repo.dart';
import 'package:comeback/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  emitLoginStates(LoginRequestBody loginRequestBody, ) async {
    emit(LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(
      success: (data) {
        emit(LoginState.success(data));
      },
      failure: (errorHandler) {
        emit(
          LoginState.error(
            message: errorHandler.apiErrorModel.message ?? 'an error occurred',
          ),
        );
      },
    );
  }
}
