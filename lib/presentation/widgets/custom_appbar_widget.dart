import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class AppBarWidget extends StatelessWidget {
  final VoidCallback moreFunction;
  final VoidCallback searchFunction;

  const AppBarWidget({
    Key? key,
    required this.moreFunction,
    required this.searchFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: AppColors.containerColor,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: moreFunction,
              icon: const Icon(
                Icons.refresh_rounded,
                color: AppColors.offWhiteColor,
                size: 25,
              ),
            ),
            IconButton(
              onPressed: searchFunction,
              icon: const Icon(
                Icons.search_rounded,
                color: AppColors.offWhiteColor,
                size: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
