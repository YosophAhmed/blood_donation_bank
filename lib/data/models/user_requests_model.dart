import 'package:donation/data/models/hospital_model.dart';

class UserRequestsModel {
  late List<RequestData> requestsData;

  UserRequestsModel({
    required this.requestsData,
  });

  UserRequestsModel.fromJson(Map<String, dynamic> json) {
    requestsData = <RequestData>[];
    json['data'].forEach((v) {
      requestsData.add(RequestData.fromJson(v));
    });
  }
}

class RequestData {
  late String requestId;
  late String userId;
  late HospitalModel hospitalModel;
  late String details;
  late String donateStatus;
  late String updatedAt;

  RequestData({
    required this.requestId,
    required this.userId,
    required this.hospitalModel,
    required this.details,
    required this.donateStatus,
    required this.updatedAt,
  });

  RequestData.fromJson(Map<String, dynamic> json) {
    requestId = json['_id'];
    userId = json['userId'];
    hospitalModel = HospitalModel.fromJson(json['hospitalId']);
    details = json['details'];
    donateStatus = json['donate_status'];
    updatedAt = json['updatedAt'];
  }
}
