import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel {
  String name;
  String email;
  String password;
  String phone;
  @JsonKey(name: 'nationalID')
  String nationalId;
  String birthDate;
  @JsonKey(name: 'bloodType')
  String bloodGroup;
  String location;

  UserModel({
    this.name = '',
    this.birthDate = '',
    this.nationalId = '',
    this.location = '',
    this.bloodGroup = '',
    this.phone = '',
    this.email = '',
    this.password = '',
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  // UserModel.fromJson(Map<String, dynamic> json) {
  //   name = json['name'];
  //   email = json['email'];
  //   password = json['password'];
  //   phone = json['phone'];
  //   nationalId = json['nationalID'];
  //   birthDate = json['birthDate'];
  //   bloodGroup = json['bloodType'];
  //   location = json['location'];
  // }
  //
  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = <String, dynamic>{};
  //   data['name'] = name;
  //   data['email'] = email;
  //   data['password'] = password;
  //   data['phone'] = phone;
  //   data['nationalID'] = nationalId;
  //   data['birthDate'] = birthDate;
  //   data['bloodType'] = bloodGroup;
  //   data['location'] = location;
  //   return data;
  // }
}
