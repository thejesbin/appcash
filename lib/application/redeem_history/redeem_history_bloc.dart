import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/redeem_history/i_redeem_history_repository.dart';
import '../../domain/redeem_history/models/redeem_history.dart';

part 'redeem_history_event.dart';
part 'redeem_history_state.dart';
part 'redeem_history_bloc.freezed.dart';

@injectable
class RedeemHistoryBloc extends Bloc<RedeemHistoryEvent, RedeemHistoryState> {
  final IRedeemHistoryRepo _redeemHistoryRepo;

  RedeemHistoryBloc(this._redeemHistoryRepo)
      : super(RedeemHistoryState.initial()) {
    on<_GetRedeemHistory>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        redeemHistoryFailureOrSuccessOption: none(),
      ));
      final Either<MainFailure, List<RedeemHistory>> redeemHistoryOption =
          await _redeemHistoryRepo.getRedeemHistory();

      emit(
        redeemHistoryOption.fold(
          (failure) => state.copyWith(
            isLoading: false,
            redeemHistoryFailureOrSuccessOption: Some(
              Left(failure),
            ),
          ),
          (success) => state.copyWith(
            isLoading: false,
            redeemHistory: success,
            redeemHistoryFailureOrSuccessOption: Some(
              Right(success),
            ),
          ),
        ),
      );
    });
  }
}
