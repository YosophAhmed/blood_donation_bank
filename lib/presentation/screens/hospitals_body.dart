import 'package:donation/presentation/manger/home_manger/home_cubit.dart';
import 'package:donation/presentation/manger/home_manger/home_states.dart';
import 'package:donation/presentation/widgets/custom_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/widgets/error_widget.dart';
import '../../core/widgets/loading_widget.dart';
import '../widgets/hospital_item_widget.dart';
import 'make_request_screen.dart';

class HospitalsBody extends StatelessWidget {

  const HospitalsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is ErrorGetAllHospitalsState) {
          showCustomSnackBar(
            context: context,
            message: state.errorMessage,
          );
        }
      },
      builder: (context, state) {
        var cubit = BlocProvider.of<HomeCubit>(context);
        if (state is LoadingGetAllHospitalsState) {
          return const Center(
            child: LoadingWidget(),
          );
        } else if (state is ErrorGetAllHospitalsState) {
          return CustomErrorWidget(
            onPressed: () {
              cubit.getAllHospitals();
            },
          );
        } else {
          return SafeArea(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: cubit.hospitals.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                int reversedIndex = cubit.hospitals.length - 1 - index;
                return HospitalItem(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    MakeRequestScreen.routeName,
                    arguments: cubit.hospitals[reversedIndex],
                  );
                },
                hospitalModel: cubit.hospitals[reversedIndex],
              );
              },
            ),
          );
        }
      },
    );
  }
}
