import 'dart:async';
import 'dart:convert';

import 'package:donation/data/data_source/local/cache_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import '../../../../core/constants/app_strings.dart';
import '../../../../data/models/auth/user_sign.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitialLoginState());

  String userMail = '';
  String userPassword = '';

  Future<void> signIn() async {
    emit(LoadingLoginState());
    const timeOutDuration = Duration(
      seconds: 9,
    );
    try {
      final response = await http
          .post(
            Uri.parse(AppStrings.loginUrl),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(
              <String, dynamic>{
                'email': userMail,
                'password': userPassword,
              },
            ),
          )
          .timeout(timeOutDuration);
      if (response.statusCode == 201 || response.statusCode == 200) {
        CacheHelper.saveCacheData(
          key: 'token',
          value: UserSignUp.fromJson(jsonDecode(response.body)).token,
        );
        emit(
          SuccessLoginState(
            userData: UserSignUp.fromJson(jsonDecode(response.body)),
          ),
        );
      } else if (response.statusCode == 401) {
        emit(
          ErrorLoginState(
            errorMessage: 'خطأ فى الايميل او كلمة السر',
          ),
        );
      } else if (response.statusCode == 500) {
        emit(
          ErrorLoginState(
            errorMessage: 'خطأ فى الخادم',
          ),
        );
      } else {
        emit(
          ErrorLoginState(
            errorMessage: 'خطأ فى البيانات',
          ),
        );
      }
    } catch (error) {
      if (error is TimeoutException) {
        emit(
          ErrorLoginState(
            errorMessage: 'خطأ فى الخادم حاول مرة أخرى',
          ),
        );
      } else {
        emit(
          ErrorLoginState(
            errorMessage: 'لقد حدث خطأ',
          ),
        );
      }
    }
  }
}
