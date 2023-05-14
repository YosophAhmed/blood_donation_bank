abstract class MakeRequestState {}

class InitialMakeRequestState extends MakeRequestState {}

class LoadingMakeRequestState extends MakeRequestState {}

class SuccessMakeRequestState extends MakeRequestState {}

class ErrorMakeRequestState extends MakeRequestState {
  final String errorMessage;

  ErrorMakeRequestState({
    required this.errorMessage,
  });
}
