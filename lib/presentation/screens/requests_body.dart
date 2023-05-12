import 'package:donation/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../data/data_source/local/dummy_data/requests_data.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/request_item_widget.dart';


class RequestsBody extends StatelessWidget {
  const RequestsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarWidget(
          moreFunction: () {},
          searchFunction: () {},
        ),
        // Padding(
        //   padding: const EdgeInsets.only(
        //     top: 300.0,
        //   ),
        //   child: Text(
        //     'لا يوجد تبرعات سابقة',
        //     style: TextStyles.buttonTextStyle(),
        //     textDirection: TextDirection.rtl,
        //     textAlign: TextAlign.center,
        //   ),
        // ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: RequestsData.requests.length,
            itemBuilder: (context, index) => RequestItem(
              requestsModel: RequestsData.requests[index],
            ),
          ),
        ),
      ],
    );
  }
}
