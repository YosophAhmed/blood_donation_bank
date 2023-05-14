import 'package:donation/core/constants/app_colors.dart';
import 'package:donation/presentation/widgets/user_info_row_widget.dart';

import 'package:flutter/material.dart';

import '../../data/models/user_requests_model.dart';
import 'custom_button_widget.dart';
import 'horizontal_card_divider_widget.dart';
import 'left_card_side_widget.dart';

class RequestItem extends StatelessWidget {
  final RequestData requestData;

  const RequestItem({
    Key? key,
    required this.requestData,
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
              requestData: requestData,
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
                'مستشفى ${requestData.hospitalModel.hospitalName}',
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
              text: requestData.updatedAt
                  .substring(0, 16)
                  .replaceRange(10, 11, '   '),
              icon: Icons.access_time_outlined,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey.withOpacity(0.5),
            ),
            UserInfoRowWidget(
              text: requestData.donateStatus,
              icon: Icons.timelapse_outlined,
            ),
          ],
        ),
      ),
    );
  }
}

class RequestDescription extends StatelessWidget {
  final RequestData requestData;

  const RequestDescription({
    Key? key,
    required this.requestData,
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
                  bloodGroups: requestData.hospitalModel.bloodGroup,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        requestData.hospitalModel.hospitalName,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.start,
                      ),
                      UserInfoRowWidget(
                        text: requestData.hospitalModel.postDateTime,
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
                        text:
                            'رقم الطابق ${requestData.hospitalModel.floorNumber}',
                        icon: Icons.view_list_outlined,
                      ),
                      UserInfoRowWidget(
                        text:
                            'رقم الغرفة ${requestData.hospitalModel.roomNumber}',
                        icon: Icons.view_list_outlined,
                      ),
                      const HorizontalCardDivider(),
                      UserInfoRowWidget(
                        text: requestData.details,
                        icon: Icons.description_outlined,
                      ),
                      const HorizontalCardDivider(),
                      UserInfoRowWidget(
                        text: requestData.donateStatus,
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
