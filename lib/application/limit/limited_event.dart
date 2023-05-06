part of 'limited_bloc.dart';

@freezed
class LimitedEvent with _$LimitedEvent {
  const factory LimitedEvent.getLimitedOffers() = _GetLimitedOffers;
}
