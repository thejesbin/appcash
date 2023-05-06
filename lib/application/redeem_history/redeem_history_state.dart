part of 'redeem_history_bloc.dart';

@freezed
class RedeemHistoryState with _$RedeemHistoryState {
  const factory RedeemHistoryState(
      {required bool isLoading,
      required List<RedeemHistory> redeemHistory,
      required Option<Either<MainFailure, List<RedeemHistory>>>
          redeemHistoryFailureOrSuccessOption}) = _RedeemHistoryState;
  factory RedeemHistoryState.initial() {
    return const RedeemHistoryState(
      isLoading: false,
      redeemHistoryFailureOrSuccessOption: None(),
      redeemHistory: [],
    );
  }
}
