import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: AvatarGlow(
        glowColor: AppColors.darkRedColor,
        endRadius: 100,
        duration: Duration(
          milliseconds: 500,
        ),
        repeat: true,
        showTwoGlows: true,
        repeatPauseDuration: Duration(
          milliseconds: 100,
        ),
        curve: Curves.fastOutSlowIn,
        child: Icon(
          Icons.water_drop,
          color: AppColors.darkRedColor,
          size: 50.0,
        ),
      ),
    );
  }
}
