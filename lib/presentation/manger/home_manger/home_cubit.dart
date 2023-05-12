import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitialHomeState());

  int currentIndex = 2;

  void changeIndex({
    required int index,
  }) {
    currentIndex = index;
    emit(
      ChangeBottomNavigationState(),
    );
  }
}
