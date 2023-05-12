import 'package:avatar_glow/avatar_glow.dart';
import 'package:donation/data/models/hospital_model.dart';
import 'package:donation/presentation/widgets/user_info_row_widget.dart';

import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';

class HospitalItem extends StatelessWidget {
  final VoidCallback onPressed;
  final HospitalModel hospitalModel;

  const HospitalItem({
    Key? key,
    required this.onPressed,
    required this.hospitalModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 150,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        padding: const EdgeInsets.all(
          8.0,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.7),
              offset: const Offset(
                10.0,
                10.0,
              ),
              blurRadius: 10.0,
            ), //BoxShadow
            //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Text(
                'مستشفى ${hospitalModel.hospitalName}',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.start,
              ),
            ),
            UserInfoRowWidget(
              text: hospitalModel.postDateTime,
              icon: Icons.access_time_outlined,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.withOpacity(0.5),
            ),
            UserInfoRowWidget(
              text: hospitalModel.hospitalAddress,
              icon: Icons.location_on_outlined,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                      ),
                      margin: const EdgeInsets.all(
                        8.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          200,
                        ),
                        color: AppColors.darkRedColor,
                      ),
                      child: Center(
                        child: Text(
                          hospitalModel.bloodGroup[index],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    itemCount: hospitalModel.bloodGroup.length >= 4
                        ? 4
                        : hospitalModel.bloodGroup.length,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                  const AvatarGlow(
                    glowColor: AppColors.darkRedColor,
                    endRadius: 13,
                    duration: Duration(
                      milliseconds: 4000,
                    ),
                    repeat: true,
                    repeatPauseDuration: Duration(
                      milliseconds: 1000,
                    ),
                    curve: Curves.easeInOut,
                    child: Icon(
                      Icons.water_drop_outlined,
                      color: AppColors.darkRedColor,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
