import 'dart:convert';

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
    try {
      final response = await http.post(
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
      );
      if (response.statusCode == 201 || response.statusCode == 200) {
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
      } else {
        emit(
          ErrorLoginState(
            errorMessage: 'خطأ فى البيانات',
          ),
        );
      }
    } catch (error) {
      emit(
        ErrorLoginState(
          errorMessage: 'لقد حدث خطأ',
        ),
      );
    }
  }
}
