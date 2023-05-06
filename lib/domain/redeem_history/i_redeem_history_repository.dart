import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/redeem_history.dart';

abstract class IRedeemHistoryRepo {
  Future<Either<MainFailure, List<RedeemHistory>>> getRedeemHistory();
}
