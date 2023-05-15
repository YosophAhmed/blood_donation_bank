import 'package:donation/presentation/widgets/custom_card.dart';
import 'package:donation/presentation/widgets/user_info_row_widget.dart';
import 'package:flutter/material.dart';

import '../../data/models/user_requests_model.dart';
import 'animated_icon_row.dart';
import 'horizontal_card_divider_widget.dart';
import 'left_card_side_widget.dart';

class RequestDescription extends StatelessWidget {
  final RequestData requestData;

  const RequestDescription({
    Key? key,
    required this.requestData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: MediaQuery.of(context).size.height,
      widget: Row(
        children: [
          LeftCardSide(
            bloodGroups: requestData.hospitalModel.bloodGroup,
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
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'مستشفى ${requestData.hospitalModel.hospitalName}',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  UserInfoRowWidget(
                    text: requestData.hospitalModel.postDateTime
                        .substring(0, 16)
                        .replaceRange(10, 11, '   '),
                    icon: Icons.access_time_outlined,
                  ),
                  const HorizontalCardDivider(),
                  UserInfoRowWidget(
                    text: requestData.hospitalModel.hospitalPhone,
                    icon: Icons.phone_enabled_outlined,
                  ),
                  UserInfoRowWidget(
                    text: requestData.hospitalModel.hospitalAddress,
                    icon: Icons.location_on_outlined,
                  ),
                  const HorizontalCardDivider(),
                  const AnimatedIconRow(
                    text: 'وقت التبرع',
                    icon: Icons.circle_outlined,
                  ),
                  UserInfoRowWidget(
                    text: 'من الساعة ${requestData.hospitalModel.fromHour}',
                    icon: Icons.timer,
                  ),
                  UserInfoRowWidget(
                    text: 'الى الساعة ${requestData.hospitalModel.toHour}',
                    icon: Icons.timer_outlined,
                  ),
                  const HorizontalCardDivider(),
                  UserInfoRowWidget(
                    text: 'رقم الطابق ${requestData.hospitalModel.floorNumber}',
                    icon: Icons.view_list_outlined,
                  ),
                  UserInfoRowWidget(
                    text: 'رقم الغرفة ${requestData.hospitalModel.roomNumber}',
                    icon: Icons.view_list_outlined,
                  ),
                  const HorizontalCardDivider(),
                  UserInfoRowWidget(
                    text: requestData.details,
                    icon: Icons.description_outlined,
                  ),
                  const HorizontalCardDivider(),
                  const AnimatedIconRow(
                    text: 'حالة الطلب',
                    icon: Icons.circle_outlined,
                  ),
                  UserInfoRowWidget(
                    text: requestData.donateStatus,
                    icon: Icons.timelapse,
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
