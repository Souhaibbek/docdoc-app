import 'package:comeback/core/helpers/extension.dart';
import 'package:comeback/core/routing/routes.dart';
import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/features/login/logic/cubit/login_cubit.dart';
import 'package:comeback/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen:
          (previous, current) =>
              current is LoginLoading ||
              current is LoginSuccess ||
              current is LoginError,
      listener: (context, state) {
        state.whenOrNull(
          loginLoading: () {
            // Show loading indicator
            showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(
                    color: ColorsManager.mainBlue,
                  ),
                );
              },
            );
          },
          loginSuccess: (data) {
            context.pop();
            context.pushNamed(Routes.home);
          },
          loginError: (apiErrorModel) {
            context.pop();
            // Show error message
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  icon: const Icon(Icons.error, color: Colors.red, size: 32.0),
                  content: Text(
                    apiErrorModel.getAllErrorsMessage(),
                    style: Styles.font15DarkBlueMedium,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => context.pop(),
                      child: Text('Got it', style: Styles.font14BlueSemiBold),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
