abstract class RegisterState {}

class InitialRegisterState extends RegisterState {}

class LoadingRegisterState extends RegisterState {}

class SuccessRegisterState extends RegisterState {}

class ErrorRegisterState extends RegisterState {
  final String errorMessage;

  ErrorRegisterState({
    required this.errorMessage,
  });
}

class ChangeBirthdayHintState extends RegisterState {}

class ChangeRegionHintState extends RegisterState {}

class ChangeBloodGroupHintState extends RegisterState {}



