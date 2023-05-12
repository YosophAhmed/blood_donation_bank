import 'package:dartz/dartz.dart';

import '../../../../core/models/failure.dart';
import '../../../../core/models/success.dart';

abstract class MakeRequestRepo {
  Future<Either<Failure, Success>> makeRequest({
    required String requestDetails,
  });
}