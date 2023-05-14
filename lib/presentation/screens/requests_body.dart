import 'package:flutter/material.dart';

import '../../data/data_source/local/dummy_data/requests_data.dart';
import '../widgets/request_item_widget.dart';

class RequestsBody extends StatelessWidget {

  const RequestsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: RequestsData.requests.length,
        itemBuilder: (context, index) => RequestItem(
          requestsModel: RequestsData.requests[index],
        ),
      ),
    );
  }
}
