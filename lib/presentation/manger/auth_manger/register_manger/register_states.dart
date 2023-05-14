import '../../../../data/models/auth/user_sign.dart';

abstract class RegisterState {}

class InitialRegisterState extends RegisterState {}

class LoadingRegisterState extends RegisterState {}

class SuccessRegisterState extends RegisterState {
  final UserSignUp userData;

  SuccessRegisterState({
    required this.userData,
  });
}

class ErrorRegisterState extends RegisterState {
  final String errorMessage;

  ErrorRegisterState({
    required this.errorMessage,
  });
}

class ChangeBirthdayHintState extends RegisterState {}

class ChangeRegionHintState extends RegisterState {}

class ChangeBloodGroupHintState extends RegisterState {}
