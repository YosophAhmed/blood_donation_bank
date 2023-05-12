import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/styles/text_styles.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final IconData icon;

  const CustomTitle({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 8.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: AppColors.lightRedColor,
            size: 40,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyles.hugeTextStyle(),
          ),
        ],
      ),
    );
  }
}
