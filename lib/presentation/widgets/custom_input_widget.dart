import 'package:donation/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class CustomInputWidget extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;
  final String buttonLabel;
  final VoidCallback buttonFunction;

  const CustomInputWidget({
    Key? key,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.buttonLabel,
    required this.buttonFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: buttonFunction,
      trailing: Icon(
        icon,
        color: iconColor,
      ),
      title: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.offWhiteColor,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyles.hintTextStyle().copyWith(
              color: AppColors.offWhiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
