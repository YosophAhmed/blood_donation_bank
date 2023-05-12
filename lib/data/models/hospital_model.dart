class HospitalModel {
  final String hospitalName;
  final String hospitalPhone;
  final String hospitalAddress;
  final List<String> bloodGroup;
  final String fromHour;
  final String toHour;
  final String postDateTime;
  final String postId;
  final int floorNumber;
  final int roomNumber;

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
}
