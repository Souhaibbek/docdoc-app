import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoctorsTitle extends StatelessWidget {
  const DoctorsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text(
            'Recommendation Doctor',
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