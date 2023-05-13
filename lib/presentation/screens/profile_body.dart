import 'package:donation/presentation/manger/auth_manger/register_manger/register_cubit.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../data/models/user_model.dart';
import '../widgets/animated_icon_widget.dart';
import '../widgets/custom_card.dart';
import '../widgets/user_info_widget.dart';

class ProfileBody extends StatelessWidget {
  final Data userData;

  const ProfileBody({
    Key? key,
    required this.userData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomAnimatedIcon(
            iconSize: 50,
            radius: 100,
          ),
          CustomCard(
            height: 230,
            widget: Row(
              children: [
                Image.asset(
                  AppStrings.logoImage,
                  width: 125,
                  height: 125,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 36.0,
                  ),
                  child: VerticalDivider(
                    thickness: 2,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
                UserInfoWidget(
                  userModel: UserModel(
                    name: userData.name,
                    bloodGroup: userData.bloodGroup,
                    birthDate: userData.birthDate,
                    nationalId: userData.nationalId,
                    phone: userData.phone,
                    location: userData.location,
                  ),
                ),
              ],
            ),
          ),
          CustomCard(
            height: 230,
            widget: Image.asset(
              AppStrings.onBoard2,
              height: 230,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
