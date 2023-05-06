import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/withdraw_methods.dart';

abstract class IWithdrawMethodsRepo {
  Future<Either<MainFailure, List<WithdrawMethods>>> getWithdrawMethods();
}
