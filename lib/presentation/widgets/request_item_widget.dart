import 'package:donation/presentation/screens/request_details_screen.dart';
import 'package:donation/presentation/widgets/user_info_row_widget.dart';

import 'package:flutter/material.dart';

import '../../data/models/user_requests_model.dart';

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
        Navigator.pushNamed(
          context,
          RequestDetailsScreen.routeName,
          arguments: requestData,
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
