import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/earning_history.dart';

abstract class IEarningHistoryRepo {
  Future<Either<MainFailure, List<EarningHistory>>> getEarningHistory();
}
