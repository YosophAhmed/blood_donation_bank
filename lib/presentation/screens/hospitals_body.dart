import 'package:flutter/material.dart';

import '../../data/data_source/local/dummy_data/hospitals_data.dart';
import '../widgets/custom_appbar_widget.dart';
import '../widgets/hospital_item_widget.dart';
import 'make_request_screen.dart';

class HospitalsBody extends StatelessWidget {
  const HospitalsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarWidget(
          moreFunction: () {},
          searchFunction: () {},
        ),
        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: HospitalsData.hospitals.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => HospitalItem(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  MakeRequestScreen.routeName,
                  arguments: HospitalsData.hospitals[index],
                );
              },
              hospitalModel: HospitalsData.hospitals[index],
            ),
          ),
        ),
      ],
    );
  }
}
