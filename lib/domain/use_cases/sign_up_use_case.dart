import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/success.dart';
import '../../core/models/use_cases.dart';
import '../entites/sign_up_entity.dart';
import '../repos/sign_up_repo.dart';

class SignUpUseCase extends UseCase<Success, SignUpEntity> {
  final SignUpRepo signUpRepo;

  SignUpUseCase(this.signUpRepo);

  @override
  Future<Either<Failure, Success>> execute([SignUpEntity? parameter]) async {
    return await signUpRepo.signUp(
      signUpEntity: parameter!,
    );
  }
}
