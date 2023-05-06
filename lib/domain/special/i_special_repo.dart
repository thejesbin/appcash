import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/special.dart';

abstract class ISpecialRepo {
  Future<Either<MainFailure, List<Special>>> getSpecialOffers();
}
