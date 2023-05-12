import 'package:flutter/material.dart';

import '../../../../core/constants/app_dimensions.dart';

class BottomUpContainer extends StatelessWidget {
  final double height;
  final Color color;
  final Widget widget;

  const BottomUpContainer({
    Key? key,
    required this.color,
    required this.height,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            AppDimensions.containerBorder,
          ),
          topRight: Radius.circular(
            AppDimensions.containerBorder,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.horizontalContainerPadding,
          vertical: AppDimensions.verticalContainerPadding,
        ),
        child: widget,
      ),
    );
  }
}
