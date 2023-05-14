class UserSignUp {
  final Data data;
  final String token;

  const UserSignUp({
    required this.data,
    required this.token,
  });

  factory UserSignUp.fromJson(Map<String, dynamic> json) => UserSignUp(
        data: Data.fromJson(json['data']),
        token: json['token'],
      );

  @override
  String toString() {
    return 'name ${data.name} location ${data.location} blood ${data.bloodGroup} email ${data.email} token $token';
  }
}

class Data {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String nationalId;
  final String birthDate;
  final String bloodGroup;
  final String location;

  const Data({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.nationalId,
    required this.birthDate,
    required this.bloodGroup,
    required this.location,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        nationalId: json['nationalID'],
        birthDate: json['birthDate'],
        bloodGroup: json['bloodType'],
        location: json['location'],
      );
}
