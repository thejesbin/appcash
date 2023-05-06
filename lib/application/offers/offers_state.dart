part of 'offers_bloc.dart';

@freezed
class OffersState with _$OffersState {
  const factory OffersState(
      {required bool isLoading,
      required List<Offers> offers,
      required Option<Either<MainFailure, List<Offers>>>
          offersFailureOrSuccessOption}) = _OffersState;
  factory OffersState.initial() {
    return const OffersState(
      isLoading: false,
      offersFailureOrSuccessOption: None(),
      offers: [],
    );
  }
}
