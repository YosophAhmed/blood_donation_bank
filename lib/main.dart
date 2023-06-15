import 'package:donation/presentation/screens/home_screen.dart';
import 'package:donation/presentation/screens/login_screen.dart';
import 'package:donation/presentation/screens/make_request_screen.dart';
import 'package:donation/presentation/screens/onboarding_screen.dart';
import 'package:donation/presentation/screens/request_details_screen.dart';
import 'package:donation/presentation/screens/sign_up_screen.dart';

import 'package:flutter/material.dart';

import 'core/styles/app_themes.dart';
import 'data/data_source/local/cache_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  String? token = CacheHelper.getCacheData(
    key: 'token',
  );
  String startWidget;
  if (token != null) {
    startWidget = HomeScreen.routeName;
  } else {
    startWidget = OnBoardingScreen.routeName;
  }
  runApp(
    DonationApp(
      startWidget: startWidget,
    ),
  );
}

class DonationApp extends StatelessWidget {
  final String startWidget;
  const DonationApp({
    Key? key,
    required this.startWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: startWidget,
      routes: {
        OnBoardingScreen.routeName: (BuildContext context) =>
            const OnBoardingScreen(),
        LoginScreen.routeName: (BuildContext context) => const LoginScreen(),
        SignUpScreen.routeName: (BuildContext context) => const SignUpScreen(),
        HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
        MakeRequestScreen.routeName: (BuildContext context) =>
            const MakeRequestScreen(),
        RequestDetailsScreen.routeName: (BuildContext context) =>
            const RequestDetailsScreen(),
      },
      theme: AppThemes.primaryTheme(),
    );
  }
}
