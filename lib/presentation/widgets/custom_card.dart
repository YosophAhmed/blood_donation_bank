import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget widget;
  final double height;

  const CustomCard({Key? key, required this.widget, required this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.7),
            offset: const Offset(
              10.0,
              10.0,
            ),
            blurRadius: 10.0,
          ), //BoxShadow
          //BoxShadow
        ],
      ),
      child: widget,
    );
  }
}
