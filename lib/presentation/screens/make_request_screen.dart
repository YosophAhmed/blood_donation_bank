import 'package:donation/core/styles/text_styles.dart';
import 'package:donation/core/widgets/loading_widget.dart';
import 'package:donation/data/models/hospital_model.dart';
import 'package:donation/presentation/manger/make_request_manger/make_request_cubit.dart';
import 'package:donation/presentation/manger/make_request_manger/make_request_state.dart';
import 'package:donation/presentation/widgets/custom_snackbar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../widgets/buttom_up-container_widget.dart';
import '../widgets/custom_button_widget.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/request_details_item_widget.dart';
import '../widgets/success_request_widget.dart';

class MakeRequestScreen extends StatelessWidget {
  static const String routeName = 'MakeRequestScreen';

  const MakeRequestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as HospitalModel;
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
          AppStrings.requestDetails,
          style: TextStyles.hugeTextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RequestDetailsItem(
              hospitalModel: args,
            ),
            BlocProvider(
              create: (BuildContext context) => MakeRequestCubit(),
              child: BlocConsumer<MakeRequestCubit, MakeRequestState>(
                listener: (context, state) {
                  if (state is ErrorMakeRequestState) {
                    showCustomSnackBar(
                      context: context,
                      message: 'لقد حدث خطأ',
                    );
                  }
                },
                builder: (context, state) {
                  var cubit = BlocProvider.of<MakeRequestCubit>(context);
                  if (state is LoadingMakeRequestState) {
                    return const Padding(
                      padding: EdgeInsets.only(
                        top: 16.0,
                      ),
                      child: LoadingWidget(),
                    );
                  }
                  if (state is SuccessMakeRequestState) {
                    return const SuccessRequestWidget();
                  }
                  return BottomUpContainer(
                    color: AppColors.containerColor,
                    height: 500,
                    widget: Column(
                      children: [
                        Text(
                          AppStrings.addRequestDescription,
                          style: TextStyles.inputTextStyle(),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                          ),
                          child: CustomTextFormField(
                            color: AppColors.offWhiteColor,
                            maxLines: 2,
                            keyboardType: TextInputType.text,
                            onSaved: (value) {
                              if (value != null && value.isNotEmpty) {
                                cubit.requestDetails = value;
                              }
                            },
                            onSubmitted: (value) {
                              if (value.isNotEmpty) {
                                cubit.requestDetails = value;
                              }
                            },
                          ),
                        ),
                        CustomButton(
                          onPressed: () async {
                            await cubit.makeRequest(
                              postId: args.postId,
                            );
                          },
                          backGroundColor: AppColors.lightRedColor,
                          icon: Icons.check_circle_rounded,
                          label: AppStrings.makeRequest,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
