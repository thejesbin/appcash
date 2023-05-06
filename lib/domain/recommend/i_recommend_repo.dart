import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/recommend.dart';

abstract class IRecommendRepo {
  Future<Either<MainFailure, List<Recommend>>> getRecommendOffers();
}
