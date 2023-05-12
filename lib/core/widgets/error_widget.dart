import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../styles/text_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const CustomErrorWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.refresh_rounded,
              color: AppColors.lightRedColor,
            ),
          ),
          Text(
            'هناك خطأ ما...',
            style: TextStyles.buttonTextStyle(),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
