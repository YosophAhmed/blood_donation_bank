import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../data/models/onboarding_model.dart';
import 'custom_image_widget.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel onBoardingItem;

  const OnBoardingItem({
    Key? key,
    required this.onBoardingItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImage(
          image: onBoardingItem.image,
        ),
        Text(
          onBoardingItem.title,
          style: const TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: AppColors.darkRedColor,

          ),
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        Text(
          onBoardingItem.subTitle,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black54,
          ),
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
