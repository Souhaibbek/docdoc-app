import 'package:cached_network_image/cached_network_image.dart';
import 'package:comeback/core/helpers/spacing.dart';
import 'package:comeback/core/theming/styles.dart';
import 'package:comeback/features/home/data/models/speciality_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListItem extends StatelessWidget {
  final Doctors? doctorsModel;
  const DoctorsListItem({super.key, this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://static.vecteezy.com/system/resources/thumbnails/026/375/249/small/ai-generative-portrait-of-confident-male-doctor-in-white-coat-and-stethoscope-standing-with-arms-crossed-and-looking-at-camera-photo.jpg',

            progressIndicatorBuilder: (context, url, downloadProgress) {
              return Container(
                width: 110.w,
                height: 120.h,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(12.0),
                  color: Colors.white,
                ),
              );
            },
            imageBuilder:
                (context, imageProvider) => Container(
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12.0),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsModel?.name ?? 'Name',
                  style: Styles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsModel?.degree} | ${doctorsModel?.phone}',
                  style: Styles.font12GreyMedium,
                ),
                verticalSpace(5),
                Text(
                  doctorsModel?.email ?? 'Email',
                  style: Styles.font12GreyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
