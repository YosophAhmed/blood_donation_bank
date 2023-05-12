import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/use_cases.dart';
import '../entites/request_entity.dart';
import '../repos/home_repo.dart';

class GetBenefactorRequestsUseCase
    extends UseCase<List<RequestEntity>, String> {
  final HomeRepo homeRepo;

  GetBenefactorRequestsUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<RequestEntity>>> execute(
      [String? parameter]) async {
    return await homeRepo.getBenefactorRequests(token: parameter!);
  }
}
