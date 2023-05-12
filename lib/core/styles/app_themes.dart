import 'package:donation/core/constants/app_colors.dart';
import 'package:donation/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppThemes {
  static ThemeData primaryTheme() => ThemeData(
        scaffoldBackgroundColor: AppColors.screenBackgroundColor,
        fontFamily: AppStrings.fontFamily,
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
          centerTitle: true,
          color: AppColors.containerColor,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
            statusBarColor: Colors.transparent,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) => AppColors.offWhiteColor,
            ),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) => AppColors.greenColor,
            ),
          ),
        ),
      );
}
