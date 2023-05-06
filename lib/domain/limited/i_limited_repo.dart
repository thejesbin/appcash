import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'limited.dart';

abstract class ILimitedRepo {
  Future<Either<MainFailure, List<Limited>>> getLimitedOffers();
}
