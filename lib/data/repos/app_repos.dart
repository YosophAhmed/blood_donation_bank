import 'package:dartz/dartz.dart';
import 'package:donation/data/models/hospital_model.dart';
import 'package:donation/data/models/user_model.dart';

import '../../core/models/failure.dart';
import '../../core/models/success.dart';
import '../models/requests_model.dart';

abstract class AppRepos {
  Future<Either<Failure, Success>> signUp({
    required UserModel userModel,
  });

  Future<Either<Failure, Success>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, UserModel>> getUserData({
    required String token,
  });

  Future<Either<Failure, List<HospitalModel>>> getAllHospitals();

  Future<Either<Failure, List<RequestsModel>>> getUserRequests({
    required String token,
  });

  Future<Either<Failure, Success>> makeRequest({
    required String requestDetails,
  });
}

