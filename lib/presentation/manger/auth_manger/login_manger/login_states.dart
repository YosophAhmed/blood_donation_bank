abstract class LoginState {}

class InitialLoginState extends LoginState {}

class LoadingLoginState extends LoginState {}

class SuccessLoginState extends LoginState {}

class ErrorLoginState extends LoginState {
  final String errorMessage;

  ErrorLoginState({
    required this.errorMessage,
  });
}

class ChangePasswordVisibilityState extends LoginState {}
