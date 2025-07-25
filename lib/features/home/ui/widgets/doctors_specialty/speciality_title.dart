import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';

class SpecialityTitle extends StatelessWidget {
  const SpecialityTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text(
            'Doctor Speciality',
            style: Styles.font14DarkBlueSemiBold,
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text('See All', style: Styles.font12BlueRegular),
          ),
        ],
      ),
    );
  }
}
