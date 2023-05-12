import 'package:donation/core/constants/app_colors.dart';
import 'package:donation/core/constants/app_dimensions.dart';
import 'package:donation/core/constants/app_strings.dart';
import 'package:flutter/material.dart';


class SandBoxScreen extends StatelessWidget {
  static const String routeName = 'SandBoxScreen';

  const SandBoxScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
        ),
      ),
    );
  }
}

