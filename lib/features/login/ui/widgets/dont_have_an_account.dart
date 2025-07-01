import 'package:comeback/core/helpers/extension.dart';
import 'package:comeback/core/routing/routes.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account yet? ',
            style: Styles.font14DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: Styles.font14BlueSemiBold,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    context.pushReplacementNamed(Routes.signUp);
                  },
          ),
        ],
      ),
    );
  }
}
