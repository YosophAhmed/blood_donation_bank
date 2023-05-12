import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/success.dart';
import '../../core/models/use_cases.dart';
import '../entites/sign_in_entity.dart';
import '../repos/sign_in_repo.dart';

class SignInUseCase extends UseCase<Success, SignInEntity> {
  final SignInRepo signInRepo;

  SignInUseCase(this.signInRepo);

  @override
  Future<Either<Failure, Success>> execute([SignInEntity? parameter]) async {
    return await signInRepo.signInWithEmailAndPassword(
      signInEntity: parameter!,
    );
  }
}
