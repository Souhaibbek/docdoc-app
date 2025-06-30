import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/core/widgets/app_text_button.dart';
import 'package:comeback/features/login/ui/widgets/terms_and_condition.dart';
import 'package:comeback/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:comeback/features/signup/ui/widgets/already_have_account_text.dart';
import 'package:comeback/features/signup/ui/widgets/sign_up_bloc_listener.dart';
import 'package:comeback/features/signup/ui/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Create Account', style: Styles.font24BlueBold),
                verticalSpace(8),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: Styles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(24),
                    AppTextButton(
                      title: "Create Account",
                      textStyle: Styles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const TermsAndCondition(),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    verticalSpace(16),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignupStates();
    }
  }
}
