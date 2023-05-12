import 'package:avatar_glow/avatar_glow.dart';
import 'package:donation/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAnimatedIcon extends StatelessWidget {
  final double iconSize;
  final double radius;

  const CustomAnimatedIcon({
    Key? key,
    required this.iconSize,
    required this.radius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: AppColors.darkRedColor,
      endRadius: radius,
      duration: const Duration(
        milliseconds: 4000,
      ),
      repeat: true,
      showTwoGlows: true,
      repeatPauseDuration: const Duration(
        milliseconds: 1000,
      ),
      curve: Curves.easeInOut,
      child: Icon(
        Icons.water_drop,
        color: AppColors.darkRedColor,
        size: iconSize,
      ),
    );
  }
}
