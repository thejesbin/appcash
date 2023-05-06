import 'package:dartz/dartz.dart';

import '../core/failures/main_failure.dart';
import 'models/settings.dart';

abstract class ISettingsRepo {
  Future<Either<MainFailure, List<Settings>>> getSettings();
}
