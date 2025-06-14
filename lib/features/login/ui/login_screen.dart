import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/core/widgets/app_text_button.dart';
import 'package:comeback/core/widgets/app_text_form_field.dart';
import 'package:comeback/features/login/ui/widgets/already_sign_up.dart';
import 'package:comeback/features/login/ui/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      AppTextFormField(hintText: 'Email'),
                      verticalSpacing(16),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap:
                              () => setState(() {
                                isObscureText = !isObscureText;
                              }),
                          child: Icon(
                            isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: ColorsManager.darkBlue,
                          ),
                        ),
                      ),
                      verticalSpacing(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: Styles.font14BlueRegular,
                        ),
                      ),
                      verticalSpacing(40),
                      AppTextButton(title: 'Login', onPressed: () {}),
                      verticalSpacing(24),
                      TermsAndCondition(),
                      verticalSpacing(60),
                      AlreadySignUp(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
