import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadySignUp extends StatelessWidget {
  const AlreadySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style: Styles.font11DarkBlueRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: Styles.font11BlueSemiBold,
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
        ],
      ),
    );
  }
}
