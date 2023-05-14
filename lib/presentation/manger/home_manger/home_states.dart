import 'package:donation/data/models/user_requests_model.dart';

abstract class HomeState {}

class InitialHomeState extends HomeState {}

class ChangeBottomNavigationState extends HomeState {}

class LoadingGetAllHospitalsState extends HomeState {}

class SuccessGetAllHospitalsState extends HomeState {}

class ErrorGetAllHospitalsState extends HomeState {
  final String errorMessage;

  ErrorGetAllHospitalsState({
    required this.errorMessage,
  });
}

class LoadingGetUserDataState extends HomeState {}

class SuccessGetUserDataState extends HomeState {}

class ErrorGetUserDataState extends HomeState {
  final String errorMessage;

  ErrorGetUserDataState({
    required this.errorMessage,
  });
}

class LoadingGetAllRequestsState extends HomeState {}

class SuccessGetAllRequestsState extends HomeState {
  final UserRequestsModel userRequests;

  SuccessGetAllRequestsState({
    required this.userRequests,
  });
}

class ErrorGetAllRequestsState extends HomeState {
  final String errorMessage;

  ErrorGetAllRequestsState({
    required this.errorMessage,
  });
}
