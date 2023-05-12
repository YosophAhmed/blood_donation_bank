import 'package:donation/data/models/hospital_model.dart';
import 'package:donation/presentation/widgets/user_info_row_widget.dart';
import 'package:flutter/material.dart';

import 'custom_card.dart';
import 'horizontal_card_divider_widget.dart';
import 'left_card_side_widget.dart';

class RequestDetailsItem extends StatelessWidget {
  final HospitalModel hospitalModel;

  const RequestDetailsItem({
    Key? key,
    required this.hospitalModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: 500,
      widget: Row(
        children: [
          LeftCardSide(
            bloodGroups: hospitalModel.bloodGroup,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 64.0,
            ),
            child: VerticalDivider(
              thickness: 2,
              color: Colors.grey.withOpacity(0.5),
              width: 0,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 12.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'مستشفى ${hospitalModel.hospitalName}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.start,
                  ),
                  UserInfoRowWidget(
                    text: hospitalModel.postDateTime,
                    icon: Icons.access_time_outlined,
                  ),
                  const HorizontalCardDivider(),
                  UserInfoRowWidget(
                    text: hospitalModel.hospitalPhone,
                    icon: Icons.phone_enabled_outlined,
                  ),
                  UserInfoRowWidget(
                    text: hospitalModel.hospitalAddress,
                    icon: Icons.location_on_outlined,
                  ),
                  const HorizontalCardDivider(),
                  UserInfoRowWidget(
                    text: 'من الساعة ${hospitalModel.fromHour}',
                    icon: Icons.timer,
                  ),
                  UserInfoRowWidget(
                    text: 'الى الساعة ${hospitalModel.toHour}',
                    icon: Icons.timer_outlined,
                  ),
                  const HorizontalCardDivider(),
                  UserInfoRowWidget(
                    text: 'رقم الطابق ${hospitalModel.floorNumber}',
                    icon: Icons.view_list_outlined,
                  ),
                  UserInfoRowWidget(
                    text: 'رقم الغرفة ${hospitalModel.roomNumber}',
                    icon: Icons.view_list_outlined,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
