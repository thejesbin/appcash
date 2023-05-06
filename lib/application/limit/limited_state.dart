part of 'limited_bloc.dart';

@freezed
class LimitedState with _$LimitedState {
  const factory LimitedState(
      {required bool isLoading,
      required List<Limited> limited,
      required Option<Either<MainFailure, List<Limited>>>
          limitedFailureOrSuccessOption}) = _LimitedState;
  factory LimitedState.initial() {
    return const LimitedState(
      isLoading: false,
      limitedFailureOrSuccessOption: None(),
      limited: [],
    );
  }
}
