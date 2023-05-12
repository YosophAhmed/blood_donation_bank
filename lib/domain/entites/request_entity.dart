import 'hospital_entity.dart';

class RequestEntity {
  final HospitalEntity hospitalEntity;
  final String requestBenefactorDetails;
  final String requestStatus;
  final String requestTime;

  RequestEntity(
    this.hospitalEntity,
    this.requestBenefactorDetails,
    this.requestStatus,
    this.requestTime,
  );
}
