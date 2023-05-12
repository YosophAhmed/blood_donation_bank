import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';

class CustomDivider extends StatelessWidget {
  final Color color;

  const CustomDivider({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 22.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            child: Divider(
              thickness: 1.5,
              color: color,
            ),
          ),
          Text(
            AppStrings.aow,
            style: TextStyle(
              fontSize: 18,
              color: color,
            ),
          ),
          SizedBox(
            width: 120,
            child: Divider(
              thickness: 1.5,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
