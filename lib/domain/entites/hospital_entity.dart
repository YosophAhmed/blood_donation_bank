class HospitalEntity {
  final String hospitalName;
  final String hospitalPhone;
  final String hospitalAddress;
  final String donationStartTime;
  final String donationEndTime;
  final int donationFloorNumber;
  final int donationRoomNumber;
  final String donationPostTime;
  final List<String> bloodGroups;

  HospitalEntity(
      this.hospitalName,
      this.hospitalPhone,
      this.hospitalAddress,
      this.donationStartTime,
      this.donationEndTime,
      this.donationFloorNumber,
      this.donationRoomNumber,
      this.donationPostTime,
      this.bloodGroups,
      );
}