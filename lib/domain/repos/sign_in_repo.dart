import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/success.dart';
import '../entites/sign_in_entity.dart';

abstract class SignInRepo {
  Future<Either<Failure, Success>> signInWithEmailAndPassword({
    required SignInEntity signInEntity,
  });
}
