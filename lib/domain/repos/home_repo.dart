import 'package:dartz/dartz.dart';

import '../../../../core/models/failure.dart';
import '../entites/benefactor_entity.dart';
import '../entites/hospital_entity.dart';
import '../entites/request_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<HospitalEntity>>> getAllHospitals();
  Future<Either<Failure, BenefactorEntity>> getBenefactor({
    required String token,
  });
  Future<Either<Failure, List<RequestEntity>>> getBenefactorRequests({
    required String token,
  });
}
