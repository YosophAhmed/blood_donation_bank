import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class UserInfoRowWidget extends StatelessWidget {
  final String text;
  final IconData icon;

  const UserInfoRowWidget({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black,
            ),
            textAlign: TextAlign.start,
            textDirection: TextDirection.rtl,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Icon(
          icon,
          color: AppColors.darkRedColor,
        ),
      ],
    );
  }
}
