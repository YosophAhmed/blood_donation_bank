import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/success.dart';
import '../models/hospital_model.dart';
import '../models/requests_model.dart';
import '../models/user_model.dart';
import 'app_repos.dart';

class AppReposImpl extends AppRepos {
  @override
  Future<Either<Failure, Success>> signUp({
    required UserModel userModel,
  }) {
    // TODO: implement signUp
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> login({
    required String email,
    required String password,
  }) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<HospitalModel>>> getAllHospitals() {
    // TODO: implement getAllHospitals
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, UserModel>> getUserData({
    required String token,
  }) {
    // TODO: implement getUserData
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<RequestsModel>>> getUserRequests({
    required String token,
  }) {
    // TODO: implement getUserRequests
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Success>> makeRequest({
    required String requestDetails,
  }) {
    // TODO: implement makeRequest
    throw UnimplementedError();
  }
}
