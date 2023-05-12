import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String image;

  const CustomImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fill,
    );
  }
}
