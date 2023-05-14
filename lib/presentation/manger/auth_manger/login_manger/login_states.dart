import 'package:donation/data/models/auth/user_sign.dart';

abstract class LoginState {}

class InitialLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class SuccessLoginState extends LoginState {
  final UserSignUp userData;

  SuccessLoginState({
    required this.userData,
  });
}

class ErrorLoginState extends LoginState {
  final String errorMessage;

  ErrorLoginState({
    required this.errorMessage,
  });
}

class ChangePasswordVisibilityState extends LoginState {}
