import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/offers.dart';

abstract class IOffersRepo {
  Future<Either<MainFailure, List<Offers>>> getOffers();
}
