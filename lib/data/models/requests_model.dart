import 'package:donation/data/models/user_model.dart';

import 'hospital_model.dart';

class RequestsModel {
  final HospitalModel hospitalModel;
  final UserModel userModel;
  final String userDescription;
  final String requestStatus;
  final String requestId;

  RequestsModel({
    required this.hospitalModel,
    required this.userModel,
    required this.userDescription,
    required this.requestStatus,
    required this.requestId,
  });
}
