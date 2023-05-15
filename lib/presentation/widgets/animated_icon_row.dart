import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class AnimatedIconRow extends StatelessWidget {
  final String text;
  final IconData icon;
  const AnimatedIconRow({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.end,
            // textDirection: TextDirection.rtl,
          ),
          const SizedBox(
            width: 5,
          ),
          AvatarGlow(
            glowColor: AppColors.darkRedColor,
            endRadius: 12,
            duration: const Duration(
              milliseconds: 2000,
            ),
            showTwoGlows: true,
            repeat: true,
            repeatPauseDuration: const Duration(
              milliseconds: 500,
            ),
            curve: Curves.easeInOut,
            child: Icon(
              icon,
              color: AppColors.darkRedColor,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
