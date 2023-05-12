import 'package:dartz/dartz.dart';

import 'failure.dart';

abstract class UseCase<T, Parameter> {
  Future<Either<Failure, T>> execute([Parameter parameter]);
}

class NoParameters {}
