part of 'special_bloc.dart';

@freezed
class SpecialState with _$SpecialState {
  const factory SpecialState(
      {required bool isLoading,
      required List<Special> special,
      required Option<Either<MainFailure, List<Special>>>
          specialFailureOrSuccessOption}) = _SpecialState;
  factory SpecialState.initial() {
    return const SpecialState(
      isLoading: false,
      specialFailureOrSuccessOption: None(),
      special: [],
    );
  }
}
