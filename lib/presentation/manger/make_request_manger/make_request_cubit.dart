import 'dart:convert';

import 'package:donation/data/data_source/local/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/constants/app_strings.dart';
import 'make_request_state.dart';

import 'package:http/http.dart' as http;

class MakeRequestCubit extends Cubit<MakeRequestState> {
  MakeRequestCubit() : super(InitialMakeRequestState());

  String requestDetails = 'لا يوجد';

  String token = CacheHelper.getCacheData(
    key: 'token',
  );

  Future<void> makeRequest({
    required String postId,
  }) async {
    emit(LoadingMakeRequestState());
    try {
      final response = await http.post(
        Uri.parse('${AppStrings.makeRequestUrl}$postId'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(
          <String, dynamic>{
            'details': requestDetails,
          },
        ),
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
        emit(SuccessMakeRequestState());
      } else {
        emit(
          ErrorMakeRequestState(
            errorMessage: 'لقد حدث خطأ',
          ),
        );
      }
    } catch (error) {
      emit(
        ErrorMakeRequestState(
          errorMessage: 'لقد حدث خطأ',
        ),
      );
    }
  }
}