part of 'recommend_bloc.dart';

@freezed
class RecommendState with _$RecommendState {
  const factory RecommendState(
      {required bool isLoading,
      required List<Recommend> recommend,
      required Option<Either<MainFailure, List<Recommend>>>
          recommendFailureOrSuccessOption}) = _RecommendState;
  factory RecommendState.initial() {
    return const RecommendState(
      isLoading: false,
      recommendFailureOrSuccessOption: None(),
      recommend: [],
    );
  }
}
