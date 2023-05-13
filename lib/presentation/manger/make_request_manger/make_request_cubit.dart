import 'package:flutter_bloc/flutter_bloc.dart';

import 'make_request_state.dart';

class MakeRequestCubit extends Cubit<MakeRequestState> {
  MakeRequestCubit() : super(InitialMakeRequestState());
}
