import 'package:donation/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/styles/text_styles.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backGroundColor;
  final IconData icon;
  final String label;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.backGroundColor,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: MaterialStateProperty.resolveWith(
          (states) => 0.0,
        ),
        backgroundColor: MaterialStateColor.resolveWith(
          (states) => backGroundColor,
        ),
        // side: MaterialStateProperty.all(
        //   const BorderSide(
        //     width: 3,
        //     color: AppColors.darkRedColor,
        //   ),
        // ),
        overlayColor: MaterialStateProperty.resolveWith(
          (states) => AppColors.greenColor,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              8.0,
            ),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            label,
            style: TextStyles.buttonTextStyle(),
          ),
        ],
      ),
    );
  }
}
