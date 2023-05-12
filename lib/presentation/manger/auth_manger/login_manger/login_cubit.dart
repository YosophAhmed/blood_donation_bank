import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import 'login_states.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(InitialLoginState());

  String userMail = '';
  String userPassword = '';


  Future<void> userLogin() async {
    emit(LoadingLoginState());
    debugPrint(userMail);
    debugPrint(userPassword);
    await Future.delayed(const Duration(seconds: 5,),);
    emit(SuccessLoginState());
  }
}
