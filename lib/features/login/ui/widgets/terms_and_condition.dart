import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: Styles.font11GreyMedium,
        children: [
          TextSpan(
            text: 'By logging, you agree to our   ',
            style: Styles.font11GreyMedium,
          ),
          TextSpan(
            text: 'Terms & Conditions',
            style: Styles.font11DarkBlueMedium,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle tap on Terms of Service
                  },
          ),
           TextSpan(text: ' \nand ',style: Styles.font11GreyMedium.copyWith(height: 1.5),
),
          TextSpan(
            text: 'PrivacyPolicy',
            style: Styles.font11DarkBlueMedium,
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    // Handle tap on Privacy Policy
                  },
          ),
        ],
      ),
    );
  }
}
