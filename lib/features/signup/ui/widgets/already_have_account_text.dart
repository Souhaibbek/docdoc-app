import 'package:comeback/core/helpers/extension.dart';
import 'package:comeback/core/routing/routes.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: Styles.font14DarkBlueRegular,
          ),
          TextSpan(
            text: ' Login',
            style: Styles.font14BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.login);
              },
          ),
        ],
      ),
    );
  }
}