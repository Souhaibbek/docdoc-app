import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBlueBanner extends StatelessWidget {
  const HomeBlueBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 170.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage('assets/imgs/home_blue_pattern.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\nschedule with\nnearest doctor',
                  style: Styles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                    ),
                    child: Text('Find nearby', style: Styles.font12BlueRegular),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 10.w,
            bottom: 0,
            child: Image.asset('assets/imgs/home_doctor.png',
             height: 220.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
