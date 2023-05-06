import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/user.dart';

abstract class IUserRepo {
  Future<Either<MainFailure, List<User>>> getUser();
}
