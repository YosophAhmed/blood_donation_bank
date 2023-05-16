import 'package:donation/core/styles/text_styles.dart';
import 'package:donation/presentation/manger/home_manger/home_cubit.dart';
import 'package:donation/presentation/manger/home_manger/home_states.dart';
import 'package:donation/presentation/widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/request_item_widget.dart';

class RequestsBody extends StatelessWidget {
  const RequestsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is ErrorGetAllRequestsState) {
          showCustomSnackBar(
            context: context,
            message: 'لقد حدث خطأ',
          );
        }
      },
      builder: (context, state) {
        var cubit = BlocProvider.of<HomeCubit>(context);
        return cubit.userRequests.requestsData.isEmpty
            ? Center(
                child: Text(
                  'لا توجد تبرعات سابقة',
                  style: TextStyles.buttonTextStyle(),
                ),
              )
            : SafeArea(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  padding: EdgeInsets.zero,
                  itemCount: cubit.userRequests.requestsData.length,
                  itemBuilder: (context, index) {
                    int reversedIndex =
                        cubit.userRequests.requestsData.length - 1 - index;
                    return RequestItem(
                      requestData:
                          cubit.userRequests.requestsData[reversedIndex],
                    );
                  },
                ),
              );
      },
    );
  }
}
