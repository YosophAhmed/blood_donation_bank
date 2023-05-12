class HospitalModel {
  late String hospitalName;
  late String hospitalPhone;
  late String hospitalAddress;
  late List<String> bloodGroup;
  late String fromHour;
  late String toHour;
  late String postDateTime;
  late String postId;
  late int floorNumber;
  late int roomNumber;

  HospitalModel({
    required this.hospitalName,
    required this.hospitalPhone,
    required this.hospitalAddress,
    required this.bloodGroup,
    required this.fromHour,
    required this.toHour,
    required this.postDateTime,
    required this.postId,
    required this.floorNumber,
    required this.roomNumber,
  });

  HospitalModel.fromJson(Map<String, dynamic> json) {
    postId = json['_id'];
    hospitalName = json['name'];
    hospitalAddress = json['location'];
    hospitalPhone = json['phone'];
    fromHour = json['from'];
    toHour = json['to'];
    floorNumber = json['round_num'];
    roomNumber = json['room_num'];
    bloodGroup = json['bloodGroup'].cast<String>();
    postDateTime = json['updatedAt'];
  }

  @override
  String toString() {
    return 'name $hospitalName';
  }
}
