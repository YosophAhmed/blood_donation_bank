import 'package:donation/data/models/user_data_model.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../data/models/user_model.dart';
import '../widgets/animated_icon_widget.dart';
import '../widgets/custom_card.dart';
import '../widgets/user_info_widget.dart';

class ProfileBody extends StatelessWidget {
  final UserDataModel userData;

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
                    name: userData.data.name,
                    bloodGroup: userData.data.bloodType,
                    birthDate: userData.data.birthDate,
                    nationalId: userData.data.nationalID,
                    phone: userData.data.phone,
                    location: userData.data.location,
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
