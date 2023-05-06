import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';

import '../../domain/earning_history/i_earning_history.dart';
import '../../domain/earning_history/models/earning_history.dart';

part 'earning_history_event.dart';
part 'earning_history_state.dart';
part 'earning_history_bloc.freezed.dart';

@injectable
class EarningHistoryBloc
    extends Bloc<EarningHistoryEvent, EarningHistoryState> {
  final IEarningHistoryRepo _earningHistoryRepo;

  EarningHistoryBloc(this._earningHistoryRepo)
      : super(EarningHistoryState.initial()) {
    on<_GetEarningHistory>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        earningHistoryFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<EarningHistory>> earningHistoryOption =
          await _earningHistoryRepo.getEarningHistory();

      emit(
        earningHistoryOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            earningHistoryFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            earningHistory: success,
            earningHistoryFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
