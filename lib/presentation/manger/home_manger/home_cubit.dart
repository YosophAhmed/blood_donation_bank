import 'package:donation/core/constants/app_strings.dart';
import 'package:donation/core/helper/api.dart';
import 'package:donation/data/models/hospital_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialHomeState());

  int currentIndex = 2;

  void changeIndex({
    required int index,
  }) {
    currentIndex = index;
    emit(
      ChangeBottomNavigationState(),
    );
  }

  List<HospitalModel> hospitals = [];

  Future<void> getAllHospitals() async {
    emit(LoadingGetAllHospitalsState());
    try {
      Map<String, dynamic> data = await Api().get(
        url: AppStrings.getAllHospitalsUrl,
      );
      for (int i = 0; i < data['data'].length; i++) {
        hospitals.add(
          HospitalModel.fromJson(data['data'][i]),
        );
      }
      emit(SuccessGetAllHospitalsState());
    } catch (error) {
      emit(
        ErrorGetAllHospitalsState(
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
