import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/use_cases.dart';
import '../entites/benefactor_entity.dart';
import '../repos/home_repo.dart';

class GetBeneFactorUseCase extends UseCase<BenefactorEntity, String> {
  final HomeRepo homeRepo;

  GetBeneFactorUseCase(this.homeRepo);

  @override
  Future<Either<Failure, BenefactorEntity>> execute([String? parameter]) async {
    return await homeRepo.getBenefactor(
      token: parameter!,
    );
  }
}
