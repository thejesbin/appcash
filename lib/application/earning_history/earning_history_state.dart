part of 'earning_history_bloc.dart';

@freezed
class EarningHistoryState with _$EarningHistoryState {
  const factory EarningHistoryState(
      {required bool isLoading,
      required List<EarningHistory> earningHistory,
      required Option<Either<MainFailure, List<EarningHistory>>>
          earningHistoryFailureOrSuccessOption}) = _EarningHistoryState;
  factory EarningHistoryState.initial() {
    return const EarningHistoryState(
      isLoading: false,
      earningHistoryFailureOrSuccessOption: None(),
      earningHistory: [],
    );
  }
}
