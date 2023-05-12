import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/use_cases.dart';
import '../entites/hospital_entity.dart';
import '../repos/home_repo.dart';

class GetAllHospitalsUseCase
    extends UseCase<List<HospitalEntity>, NoParameters> {
  final HomeRepo homeRepo;

  GetAllHospitalsUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<HospitalEntity>>> execute(
      [NoParameters? parameter]) async {
    return await homeRepo.getAllHospitals();
  }
}
