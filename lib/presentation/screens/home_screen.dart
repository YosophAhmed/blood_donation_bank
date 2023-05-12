import 'package:donation/presentation/screens/profile_body.dart';
import 'package:donation/presentation/screens/requests_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_strings.dart';
import '../manger/home_manger/home_cubit.dart';
import '../manger/home_manger/home_states.dart';
import 'hospitals_body.dart';
import 'more_body.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => HomeCubit()..getAllHospitals(),
      child: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BlocProvider.of<HomeCubit>(context);
          const List<Widget> bodies = [
            MoreBody(),
            HospitalsBody(),
            RequestsBody(),
            ProfileBody(),
          ];
          return Scaffold(
            body: bodies[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeIndex(
                  index: index,
                );
              },
              elevation: 0.0,
              selectedItemColor: AppColors.lightRedColor,
              unselectedItemColor: AppColors.offWhiteColor,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu_rounded,
                  ),
                  label: AppStrings.more,
                  backgroundColor: AppColors.containerColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.local_hospital_rounded,
                  ),
                  label: AppStrings.hospitals,
                  backgroundColor: AppColors.containerColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.water_drop,
                  ),
                  label: AppStrings.requests,
                  backgroundColor: AppColors.containerColor,
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: AppStrings.profile,
                  backgroundColor: AppColors.containerColor,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
