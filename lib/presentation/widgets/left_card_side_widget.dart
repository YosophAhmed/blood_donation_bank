import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import 'animated_icon_widget.dart';

class LeftCardSide extends StatelessWidget {
  final List<String> bloodGroups;

  const LeftCardSide({
    Key? key,
    required this.bloodGroups,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomAnimatedIcon(
          iconSize: 25,
          radius: 50,
        ),
        SizedBox(
          height: 200,
          width: 110,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, index) => Container(
              margin: const EdgeInsets.all(
                8.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  200,
                ),
                color: AppColors.darkRedColor,
              ),
              child: Center(
                child: Text(
                  bloodGroups[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            itemCount: bloodGroups.length,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
            ),
          ),
        ),
      ],
    );
  }
}
