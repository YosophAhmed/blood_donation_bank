import 'package:flutter/cupertino.dart';

import '../../../../core/constants/app_colors.dart';

class CustomNumberContainer extends StatelessWidget {
  final int number;

  const CustomNumberContainer({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        number.toString(),
        style: const TextStyle(
          color: AppColors.offWhiteColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
