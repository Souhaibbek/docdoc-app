import 'package:comeback/features/signup/data/models/signup_request_body.dart';
import 'package:comeback/features/signup/data/repos/signup_repo.dart';
import 'package:comeback/features/signup/logic/cubit/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  SignUpCubit(this._signUpRepo) : super(const SignUpState.signUpInitial());
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignUpState.signUpLoading());
    final response = await _signUpRepo.signUp(
      SignupRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignUpState.signUpSuccess(signupResponse));
      },
      failure: (apiErrorModel) {
        emit(SignUpState.signUpError(apiErrorModel));
      },
    );
  }
}
