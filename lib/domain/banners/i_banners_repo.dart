import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'banners.dart';

abstract class IBannersRepo {
  Future<Either<MainFailure, List<Banners>>> getBanners();
}
