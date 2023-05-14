class UserDataModel {
  late UserData data;

  UserDataModel({
    required this.data,
  });

  UserDataModel.fromJson(Map<String, dynamic> json) {
    data = UserData.fromJson(json['data']);
  }
}

class UserData {
  late String name;
  late String phone;
  late String location;
  late String birthDate;
  late String nationalID;
  late String bloodType;

  UserData({
    required this.name,
    required this.phone,
    required this.location,
    required this.birthDate,
    required this.nationalID,
    required this.bloodType,
  });

  UserData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    location = json['location'];
    birthDate = json['birthDate'];
    nationalID = json['nationalID'];
    bloodType = json['bloodType'];
  }
}
