import 'package:donation/core/constants/app_dimensions.dart';
import 'package:donation/core/styles/text_styles.dart';

import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../../data/data_source/local/cache_helper.dart';
import '../widgets/animated_icon_widget.dart';
import '../widgets/custom_list_tile_widget.dart';
import 'login_screen.dart';

class MoreBody extends StatelessWidget {
  const MoreBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.horizontalPadding,
        ),
        child: Column(
          children: [
            const CustomAnimatedIcon(
              iconSize: 50,
              radius: 100,
            ),
            CustomListTile(
              onTap: () {
                CacheHelper.removeCacheData(
                  key: 'token',
                );
                Navigator.pushReplacementNamed(
                  context,
                  LoginScreen.routeName,
                );
              },
              leading: const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.containerColor,
              ),
              trailing: Text(
                AppStrings.signOut,
                style: TextStyles.buttonTextStyle(),
              ),
            ),
            Divider(
              color: Colors.grey.withOpacity(0.5),
              thickness: 1.5,
              indent: 50,
              height: 0,
            ),
            CustomListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AboutDialog(
                    applicationIcon: Image.asset(
                      AppStrings.logoImage,
                      width: 80,
                      height: 80,
                    ),
                    applicationLegalese: 'legalese',
                    applicationName: 'بنك التبرع بالدم',
                    applicationVersion: 'Version 1.0',
                  ),
                );
              },
              leading: const Icon(
                Icons.info_rounded,
                color: AppColors.containerColor,
              ),
              trailing: Text(
                AppStrings.aboutApp,
                style: TextStyles.buttonTextStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
