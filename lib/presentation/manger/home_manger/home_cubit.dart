import 'dart:convert';

import 'package:donation/core/constants/app_strings.dart';
import 'package:donation/core/helper/api.dart';
import 'package:donation/data/data_source/local/cache_helper.dart';
import 'package:donation/data/models/hospital_model.dart';
import 'package:donation/data/models/user_requests_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_states.dart';

import 'package:http/http.dart' as http;

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
          errorMessage: 'لقد حدث خطأ',
        ),
      );
    }
  }

  String token = CacheHelper.getCacheData(
    key: 'token',
  );

  Future<void> getAllUserRequests() async {
    emit(LoadingGetAllRequestsState());
    try {
      final response = await http.get(
        Uri.parse(AppStrings.getAllRequestsUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        emit(
          SuccessGetAllRequestsState(
            userRequests: UserRequestsModel.fromJson(
              jsonDecode(response.body),
            ),
          ),
        );
      } else {
        emit(
          ErrorGetAllRequestsState(
            errorMessage: 'لقد حدث خطأ',
          ),
        );
      }
    } catch (error) {
      emit(
        ErrorGetAllRequestsState(
          errorMessage: 'لقد حدث خطأ',
        ),
      );
    }
  }
}