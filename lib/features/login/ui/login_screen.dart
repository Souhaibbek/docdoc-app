import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/core/widgets/app_text_button.dart';
import 'package:comeback/features/login/data/models/login_request_body.dart';
import 'package:comeback/features/login/logic/cubit/login_cubit.dart';
import 'package:comeback/features/login/ui/widgets/already_sign_up.dart';
import 'package:comeback/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:comeback/features/login/ui/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back', style: Styles.font24BlueBold),
                verticalSpacing(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: Styles.font14GreyRegular,
                ),
                verticalSpacing(36),
                Column(
                  children: [
                    EmailAndPassword(),
                    verticalSpacing(24),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        'Forgot Password?',
                        style: Styles.font14BlueRegular,
                      ),
                    ),
                    verticalSpacing(40),
                    AppTextButton(
                      title: 'Login',
                      onPressed: () {
                        validateThenLogin(context);
                      },
                    ),
                    verticalSpacing(24),
                    TermsAndCondition(),
                    verticalSpacing(60),
                    AlreadySignUp(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

// Validation and Login Function
  void validateThenLogin(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();
    if (loginCubit.formKey.currentState!.validate()) {
      loginCubit.emitLoginStates(
        LoginRequestBody(
          email: loginCubit.emailController.text,
          password: loginCubit.passwordController.text,
        ),
      );
    }
  }
}
