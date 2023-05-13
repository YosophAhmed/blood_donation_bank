import 'package:donation/presentation/widgets/user_info_row_widget.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../data/models/user_model.dart';

class UserInfoWidget extends StatelessWidget {
  final UserModel userModel;

  const UserInfoWidget({
    Key? key,
    required this.userModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      200,
                    ),
                    color: AppColors.darkRedColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      userModel.bloodGroup,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    userModel.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.withOpacity(0.5),
            ),
            UserInfoRowWidget(
              text: userModel.nationalId,
              icon: Icons.credit_card_outlined,
            ),
            UserInfoRowWidget(
              text: userModel.phone,
              icon: Icons.phone_enabled_outlined,
            ),
            UserInfoRowWidget(
              text: userModel.birthDate.substring(0,10),
              icon: Icons.date_range_outlined,
            ),
            UserInfoRowWidget(
              text: userModel.location,
              icon: Icons.location_on_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
