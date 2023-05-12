import 'package:donation/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle hugeTextStyle() => const TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: AppColors.offWhiteColor,
      );

  static TextStyle buttonTextStyle() => const TextStyle(
        fontSize: 26,
        color: Colors.black,
      );

  static TextStyle inputTextStyle() => const TextStyle(
        fontSize: 22,
        color: AppColors.offWhiteColor,
      );

  static TextStyle hintTextStyle() => TextStyle(
        fontSize: 16,
        color: AppColors.offWhiteColor.withOpacity(0.4),
      );

  static TextStyle normalTextStyle() => const TextStyle(
    fontSize: 18,
    color: AppColors.containerColor,
    fontWeight: FontWeight.bold,
  );

}
