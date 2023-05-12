import 'package:donation/core/constants/app_colors.dart';
import 'package:donation/presentation/widgets/user_info_row_widget.dart';

import 'package:flutter/material.dart';

import '../../data/models/requests_model.dart';
import 'custom_button_widget.dart';
import 'horizontal_card_divider_widget.dart';
import 'left_card_side_widget.dart';

class RequestItem extends StatelessWidget {
  final RequestsModel requestsModel;

  const RequestItem({
    Key? key,
    required this.requestsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) => Dialog(
            backgroundColor: AppColors.offWhiteColor,
            elevation: 0.0,
            child: RequestDescription(
              requestsModel: requestsModel,
            ),
          ),
        );
      },
      child: Container(
        height: 110,
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
                requestsModel.hospitalModel.hospitalName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.start,
              ),
            ),
            UserInfoRowWidget(
              text: requestsModel.hospitalModel.postDateTime,
              icon: Icons.access_time_outlined,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.withOpacity(0.5),
            ),
            UserInfoRowWidget(
              text: requestsModel.requestStatus,
              icon: Icons.timelapse_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class RequestDescription extends StatelessWidget {
  final RequestsModel requestsModel;

  const RequestDescription({
    Key? key,
    required this.requestsModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16.0,
        ),
        child: Column(
          children: [
            Row(
              children: [
                LeftCardSide(
                  bloodGroups: requestsModel.hospitalModel.bloodGroup,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        requestsModel.hospitalModel.hospitalName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.start,
                      ),
                      UserInfoRowWidget(
                        text: requestsModel.hospitalModel.postDateTime,
                        icon: Icons.access_time_outlined,
                      ),
                      const HorizontalCardDivider(),
                      UserInfoRowWidget(
                        text: requestsModel.hospitalModel.hospitalPhone,
                        icon: Icons.phone_enabled_outlined,
                      ),
                      UserInfoRowWidget(
                        text: requestsModel.hospitalModel.hospitalAddress,
                        icon: Icons.location_on_outlined,
                      ),
                      const HorizontalCardDivider(),
                      UserInfoRowWidget(
                        text:
                            'من الساعة ${requestsModel.hospitalModel.fromHour}',
                        icon: Icons.timer,
                      ),
                      UserInfoRowWidget(
                        text:
                            'الى الساعة ${requestsModel.hospitalModel.toHour}',
                        icon: Icons.timer_outlined,
                      ),
                      const HorizontalCardDivider(),
                      UserInfoRowWidget(
                        text:
                            'رقم الطابق ${requestsModel.hospitalModel.floorNumber}',
                        icon: Icons.view_list_outlined,
                      ),
                      UserInfoRowWidget(
                        text:
                            'رقم الغرفة ${requestsModel.hospitalModel.roomNumber}',
                        icon: Icons.view_list_outlined,
                      ),
                      const HorizontalCardDivider(),
                      UserInfoRowWidget(
                        text: requestsModel.userDescription,
                        icon: Icons.description_outlined,
                      ),
                      const HorizontalCardDivider(),
                      UserInfoRowWidget(
                        text: requestsModel.requestStatus,
                        icon: Icons.timelapse_outlined,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backGroundColor: AppColors.lightRedColor,
              icon: Icons.close,
              label: 'اغلاق',
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
