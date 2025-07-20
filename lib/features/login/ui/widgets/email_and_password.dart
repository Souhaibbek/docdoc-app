import 'package:comeback/core/helpers/app_regex.dart';
import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/widgets/app_text_form_field.dart';
import 'package:comeback/features/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool isObscureText = true;
  late final TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<LoginCubit>().passwordController;
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
          verticalSpace(16),
          AppTextFormField(
            hintText: 'Password',
            controller: passwordController,
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
