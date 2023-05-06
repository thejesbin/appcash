import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/limited/i_limited_repo.dart';
import '../../domain/limited/limited.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'limited_event.dart';
part 'limited_state.dart';
part 'limited_bloc.freezed.dart';

@injectable
class LimitedBloc extends Bloc<LimitedEvent, LimitedState> {
  final ILimitedRepo _limitedRepo;

  LimitedBloc(this._limitedRepo) : super(LimitedState.initial()) {
    on<_GetLimitedOffers>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        limitedFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<Limited>> limitedOption =
          await _limitedRepo.getLimitedOffers();

      emit(
        limitedOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            limitedFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            limited: success,
            limitedFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
