part of 'banners_bloc.dart';

@freezed
class BannersState with _$BannersState {
  const factory BannersState(
      {required bool isLoading,
      required List<Banners> banners,
      required Option<Either<MainFailure, List<Banners>>>
          bannersFailureOrSuccessOption}) = _BannersState;
  factory BannersState.initial() {
    return const BannersState(
      isLoading: false,
      bannersFailureOrSuccessOption: None(),
      banners: [],
    );
  }
}
