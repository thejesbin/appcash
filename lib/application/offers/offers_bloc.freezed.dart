// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'offers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OffersEventTearOff {
  const _$OffersEventTearOff();

  _GetOffers getOffers() {
    return const _GetOffers();
  }
}

/// @nodoc
const $OffersEvent = _$OffersEventTearOff();

/// @nodoc
mixin _$OffersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersEventCopyWith<$Res> {
  factory $OffersEventCopyWith(
          OffersEvent value, $Res Function(OffersEvent) then) =
      _$OffersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OffersEventCopyWithImpl<$Res> implements $OffersEventCopyWith<$Res> {
  _$OffersEventCopyWithImpl(this._value, this._then);

  final OffersEvent _value;
  // ignore: unused_field
  final $Res Function(OffersEvent) _then;
}

/// @nodoc
abstract class _$GetOffersCopyWith<$Res> {
  factory _$GetOffersCopyWith(
          _GetOffers value, $Res Function(_GetOffers) then) =
      __$GetOffersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetOffersCopyWithImpl<$Res> extends _$OffersEventCopyWithImpl<$Res>
    implements _$GetOffersCopyWith<$Res> {
  __$GetOffersCopyWithImpl(_GetOffers _value, $Res Function(_GetOffers) _then)
      : super(_value, (v) => _then(v as _GetOffers));

  @override
  _GetOffers get _value => super._value as _GetOffers;
}

/// @nodoc

class _$_GetOffers implements _GetOffers {
  const _$_GetOffers();

  @override
  String toString() {
    return 'OffersEvent.getOffers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetOffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getOffers,
  }) {
    return getOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getOffers,
  }) {
    return getOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getOffers,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetOffers value) getOffers,
  }) {
    return getOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
  }) {
    return getOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetOffers value)? getOffers,
    required TResult orElse(),
  }) {
    if (getOffers != null) {
      return getOffers(this);
    }
    return orElse();
  }
}

abstract class _GetOffers implements OffersEvent {
  const factory _GetOffers() = _$_GetOffers;
}

/// @nodoc
class _$OffersStateTearOff {
  const _$OffersStateTearOff();

  _OffersState call(
      {required bool isLoading,
      required List<Offers> offers,
      required Option<Either<MainFailure, List<Offers>>>
          offersFailureOrSuccessOption}) {
    return _OffersState(
      isLoading: isLoading,
      offers: offers,
      offersFailureOrSuccessOption: offersFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $OffersState = _$OffersStateTearOff();

/// @nodoc
mixin _$OffersState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Offers> get offers => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Offers>>> get offersFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OffersStateCopyWith<OffersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffersStateCopyWith<$Res> {
  factory $OffersStateCopyWith(
          OffersState value, $Res Function(OffersState) then) =
      _$OffersStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Offers> offers,
      Option<Either<MainFailure, List<Offers>>> offersFailureOrSuccessOption});
}

/// @nodoc
class _$OffersStateCopyWithImpl<$Res> implements $OffersStateCopyWith<$Res> {
  _$OffersStateCopyWithImpl(this._value, this._then);

  final OffersState _value;
  // ignore: unused_field
  final $Res Function(OffersState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? offers = freezed,
    Object? offersFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offers>,
      offersFailureOrSuccessOption: offersFailureOrSuccessOption == freezed
          ? _value.offersFailureOrSuccessOption
          : offersFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Offers>>>,
    ));
  }
}

/// @nodoc
abstract class _$OffersStateCopyWith<$Res>
    implements $OffersStateCopyWith<$Res> {
  factory _$OffersStateCopyWith(
          _OffersState value, $Res Function(_OffersState) then) =
      __$OffersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Offers> offers,
      Option<Either<MainFailure, List<Offers>>> offersFailureOrSuccessOption});
}

/// @nodoc
class __$OffersStateCopyWithImpl<$Res> extends _$OffersStateCopyWithImpl<$Res>
    implements _$OffersStateCopyWith<$Res> {
  __$OffersStateCopyWithImpl(
      _OffersState _value, $Res Function(_OffersState) _then)
      : super(_value, (v) => _then(v as _OffersState));

  @override
  _OffersState get _value => super._value as _OffersState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? offers = freezed,
    Object? offersFailureOrSuccessOption = freezed,
  }) {
    return _then(_OffersState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      offers: offers == freezed
          ? _value.offers
          : offers // ignore: cast_nullable_to_non_nullable
              as List<Offers>,
      offersFailureOrSuccessOption: offersFailureOrSuccessOption == freezed
          ? _value.offersFailureOrSuccessOption
          : offersFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Offers>>>,
    ));
  }
}

/// @nodoc

class _$_OffersState implements _OffersState {
  const _$_OffersState(
      {required this.isLoading,
      required this.offers,
      required this.offersFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Offers> offers;
  @override
  final Option<Either<MainFailure, List<Offers>>> offersFailureOrSuccessOption;

  @override
  String toString() {
    return 'OffersState(isLoading: $isLoading, offers: $offers, offersFailureOrSuccessOption: $offersFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OffersState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.offers, offers) &&
            const DeepCollectionEquality().equals(
                other.offersFailureOrSuccessOption,
                offersFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(offers),
      const DeepCollectionEquality().hash(offersFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$OffersStateCopyWith<_OffersState> get copyWith =>
      __$OffersStateCopyWithImpl<_OffersState>(this, _$identity);
}

abstract class _OffersState implements OffersState {
  const factory _OffersState(
      {required bool isLoading,
      required List<Offers> offers,
      required Option<Either<MainFailure, List<Offers>>>
          offersFailureOrSuccessOption}) = _$_OffersState;

  @override
  bool get isLoading;
  @override
  List<Offers> get offers;
  @override
  Option<Either<MainFailure, List<Offers>>> get offersFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$OffersStateCopyWith<_OffersState> get copyWith =>
      throw _privateConstructorUsedError;
}
