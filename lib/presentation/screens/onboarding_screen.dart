import 'package:donation/presentation/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimensions.dart';
import '../../../../core/constants/app_strings.dart';
import '../../data/data_source/local/onboarding_data.dart';
import '../widgets/buttom_up-container_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_divider_widget.dart';
import '../widgets/onboarding_widget.dart';
import 'login_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static const String routeName = 'OnBoardingScreen';

  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: OnBoardingScreenBody(),
    );
  }
}

class OnBoardingScreenBody extends StatelessWidget {
  const OnBoardingScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoarding(
          onBoardingItems: OnBoardingData.onBoardingItems,
        ),
        const Spacer(),
        BottomUpContainer(
          color: AppColors.containerColor,
          height: AppDimensions.containerHeight,
          widget: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    LoginScreen.routeName,
                  );
                },
                backGroundColor: AppColors.lightRedColor,
                icon: Icons.login_rounded,
                label: AppStrings.signIn,
              ),
              const CustomDivider(
                color: Colors.white,
              ),
              CustomButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(
                    context,
                    SignUpScreen.routeName,
                  );
                },
                backGroundColor: Colors.white,
                icon: Icons.account_box_rounded,
                label: AppStrings.signUp,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
