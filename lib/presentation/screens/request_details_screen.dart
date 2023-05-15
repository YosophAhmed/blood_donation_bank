import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/styles/text_styles.dart';
import '../../data/models/user_requests_model.dart';
import '../widgets/request_description_widget.dart';

class RequestDetailsScreen extends StatelessWidget {
  static const String routeName = 'RequestDetailsScreen';

  const RequestDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as RequestData;
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColors.offWhiteColor,
              size: 30,
            ),
          ),
        ],
        title: Text(
          'تفاصيل الطلب',
          style: TextStyles.hugeTextStyle(),
        ),
      ),
      body: RequestDescription(
        requestData: args,
      ),
    );
  }
}
