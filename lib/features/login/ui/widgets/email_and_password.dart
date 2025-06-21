import 'package:comeback/core/helpers/app_regex.dart';
import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/widgets/app_text_form_field.dart';
import 'package:comeback/features/login/logic/cubit/login_cubit.dart';
import 'package:comeback/features/login/ui/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool hasUppercase = false;
  bool hasLowercase = false;
  bool hasNumber = false;
  bool hasSpecialCharacter = false;
  bool hasMinLength = false;
  bool isObscureText = true;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
    setupPasswordValidationListeners();
  }

  void setupPasswordValidationListeners() {
    passwordController.addListener(() {
      final password = passwordController.text;
      setState(() {
        hasUppercase = AppRegex.hasUpperCase(password);
        hasLowercase = AppRegex.hasLowerCase(password);
        hasNumber = AppRegex.hasNumber(password);
        hasSpecialCharacter = AppRegex.hasSpecialCharacter(password);
        hasMinLength = AppRegex.hasMinLength(password);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpacing(16),
          AppTextFormField(
            hintText: 'Password',
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Password is required';
              }
            },

            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap:
                  () => setState(() {
                    isObscureText = !isObscureText;
                  }),
              child: Icon(
                isObscureText ? Icons.visibility : Icons.visibility_off,
                color: ColorsManager.darkBlue,
              ),
            ),
          ),
          verticalSpacing(24),
          PasswordValidations(
            hasUppercase: hasUppercase,
            hasLowercase: hasLowercase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
