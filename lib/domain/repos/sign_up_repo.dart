import 'package:dartz/dartz.dart';

import '../../core/models/failure.dart';
import '../../core/models/success.dart';
import '../entites/sign_up_entity.dart';

abstract class SignUpRepo {
  Future<Either<Failure, Success>> signUp({
    required SignUpEntity signUpEntity,
  });
}
