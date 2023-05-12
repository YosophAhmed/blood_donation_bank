import 'package:donation/core/screens/sandbox_screen.dart';
import 'package:donation/presentation/screens/home_screen.dart';
import 'package:donation/presentation/screens/login_screen.dart';
import 'package:donation/presentation/screens/make_request_screen.dart';
import 'package:donation/presentation/screens/onboarding_screen.dart';
import 'package:donation/presentation/screens/sign_up_screen.dart';

import 'package:flutter/material.dart';

import 'core/styles/app_themes.dart';

void main() {
  runApp(const DonationApp());
}

class DonationApp extends StatelessWidget {
  const DonationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SandBoxScreen.routeName: (BuildContext context) =>
            const SandBoxScreen(),
        OnBoardingScreen.routeName: (BuildContext context) =>
            const OnBoardingScreen(),
        LoginScreen.routeName: (BuildContext context) => const LoginScreen(),
        SignUpScreen.routeName: (BuildContext context) => const SignUpScreen(),
        HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
        MakeRequestScreen.routeName: (BuildContext context) =>
            const MakeRequestScreen(),
      },
      initialRoute: OnBoardingScreen.routeName,
      theme: AppThemes.primaryTheme(),
    );
  }
}
