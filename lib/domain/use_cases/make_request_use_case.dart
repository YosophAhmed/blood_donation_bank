import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/success.dart';
import '../../core/models/use_cases.dart';
import '../repos/make_request_repo.dart';

class MakeRequestUseCase extends UseCase<Success, String> {
  final MakeRequestRepo makeRequestRepo;

  MakeRequestUseCase(this.makeRequestRepo);

  @override
  Future<Either<Failure, Success>> execute([String? parameter]) {
    return makeRequestRepo.makeRequest(requestDetails: parameter!);
  }
}
