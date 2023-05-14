import 'package:donation/core/constants/app_colors.dart';
import 'package:donation/presentation/screens/home_screen.dart';
import 'package:donation/presentation/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

import '../../core/styles/text_styles.dart';

class SuccessRequestWidget extends StatelessWidget {
  const SuccessRequestWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle_rounded,
                color: Colors.green,
                size: 40,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'تم اضافة الطلب بنجاح',
                style: TextStyles.buttonTextStyle(),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: CustomButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                HomeScreen.routeName,
              );
            },
            backGroundColor: AppColors.lightRedColor,
            icon: Icons.arrow_forward_ios_rounded,
            label: 'طلبات التبرع',
          ),
        ),
      ],
    );
  }
}
