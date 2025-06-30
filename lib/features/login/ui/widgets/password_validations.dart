import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/colors.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasUppercase;
  final bool hasLowercase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  const PasswordValidations({
    super.key,
    required this.hasUppercase,
    required this.hasLowercase,
    required this.hasNumber,
    required this.hasSpecialCharacter,
    required this.hasMinLength,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow(isValid: hasLowercase, text: 'Contains lowercase letter'),
        verticalSpace(2),
        buildValidationRow(isValid: hasUppercase, text: 'Contains uppercase letter'),
        verticalSpace(2),
        buildValidationRow(isValid: hasNumber, text: 'Contains number'),
        verticalSpace(2),
        buildValidationRow(isValid: hasSpecialCharacter, text: 'Contains special character'),
        verticalSpace(2),
        buildValidationRow(
          isValid: hasMinLength,
          text: 'Contains at least 8 characters',
        ),
      ],
    );
  }

  Widget buildValidationRow({required bool isValid, required String text}) {
    return Row(
      children: [
        CircleAvatar(radius: 2.5, backgroundColor: ColorsManager.greyColor),
        horizontalSpace(6),
        Text(
          text,
          style: Styles.font11DarkBlueRegular.copyWith(
            decoration:
                isValid ? TextDecoration.lineThrough : TextDecoration.none,
            decorationColor: Colors.green,
            decorationThickness: 2.0,
            color: isValid ? ColorsManager.greyColor : ColorsManager.darkBlue,
          ),
        ),
      ],
    );
  }
}
