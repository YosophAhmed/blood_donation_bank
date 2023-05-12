import 'package:donation/core/constants/app_dimensions.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../data/models/onboarding_model.dart';
import 'onboarding_item_widget.dart';

class OnBoarding extends StatefulWidget {
  final List<OnBoardingModel> onBoardingItems;

  const OnBoarding({
    Key? key,
    required this.onBoardingItems,
  }) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.horizontalPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 590,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: widget.onBoardingItems.length,
              itemBuilder: (context, index) => OnBoardingItem(
                onBoardingItem: widget.onBoardingItems[index],
              ),
              onPageChanged: (value) => setState(() {
                currentIndex = value;
              }),
            ),
          ),
          DotsIndicator(
            dotsCount: widget.onBoardingItems.length,
            position: currentIndex.toDouble(),
            decorator: DotsDecorator(
              color: Colors.grey.withOpacity(0.6), // Inactive color
              activeColor: AppColors.darkRedColor,
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              spacing: const EdgeInsets.only(
                right: 7,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
