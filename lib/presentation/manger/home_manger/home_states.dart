abstract class HomeState {}

class InitialHomeState extends HomeState {}

class ChangeBottomNavigationState extends HomeState {}

class GetAllHospitalsLoadingState extends HomeState {}

class SuccessGetAllHospitalsState extends HomeState {}

class ErrorGetAllHospitalsState extends HomeState {
  final String errorMessage;

  ErrorGetAllHospitalsState({
    required this.errorMessage,
  });
}
