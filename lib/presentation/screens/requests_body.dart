import 'package:donation/core/styles/text_styles.dart';
import 'package:donation/core/widgets/loading_widget.dart';
import 'package:donation/presentation/manger/home_manger/home_cubit.dart';
import 'package:donation/presentation/manger/home_manger/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/error_widget.dart';
import '../widgets/request_item_widget.dart';

class RequestsBody extends StatelessWidget {
  const RequestsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is SuccessGetAllRequestsState &&
            state.userRequests.requestsData.isEmpty) {
          return Center(
            child: Text(
              'لا توجد تبرعات ثابقة',
              style: TextStyles.buttonTextStyle(),
            ),
          );
        } else if (state is SuccessGetAllRequestsState &&
            state.userRequests.requestsData.isNotEmpty) {
          return SafeArea(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.userRequests.requestsData.length,
              itemBuilder: (context, index) => RequestItem(
                requestData: state.userRequests.requestsData[index],
              ),
            ),
          );
        } else if (state is ErrorGetAllRequestsState) {
          return Center(
            child: CustomErrorWidget(
              onPressed: () {},
            ),
          );
        } else {
          return const Center(
            child: LoadingWidget(),
          );
        }
      },
    );
  }
}