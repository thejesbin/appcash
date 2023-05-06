// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'limited_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LimitedEventTearOff {
  const _$LimitedEventTearOff();

  _GetLimitedOffers getLimitedOffers() {
    return const _GetLimitedOffers();
  }
}

/// @nodoc
const $LimitedEvent = _$LimitedEventTearOff();

/// @nodoc
mixin _$LimitedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLimitedOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getLimitedOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLimitedOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLimitedOffers value) getLimitedOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLimitedOffers value)? getLimitedOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLimitedOffers value)? getLimitedOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitedEventCopyWith<$Res> {
  factory $LimitedEventCopyWith(
          LimitedEvent value, $Res Function(LimitedEvent) then) =
      _$LimitedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LimitedEventCopyWithImpl<$Res> implements $LimitedEventCopyWith<$Res> {
  _$LimitedEventCopyWithImpl(this._value, this._then);

  final LimitedEvent _value;
  // ignore: unused_field
  final $Res Function(LimitedEvent) _then;
}

/// @nodoc
abstract class _$GetLimitedOffersCopyWith<$Res> {
  factory _$GetLimitedOffersCopyWith(
          _GetLimitedOffers value, $Res Function(_GetLimitedOffers) then) =
      __$GetLimitedOffersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetLimitedOffersCopyWithImpl<$Res>
    extends _$LimitedEventCopyWithImpl<$Res>
    implements _$GetLimitedOffersCopyWith<$Res> {
  __$GetLimitedOffersCopyWithImpl(
      _GetLimitedOffers _value, $Res Function(_GetLimitedOffers) _then)
      : super(_value, (v) => _then(v as _GetLimitedOffers));

  @override
  _GetLimitedOffers get _value => super._value as _GetLimitedOffers;
}

/// @nodoc

class _$_GetLimitedOffers implements _GetLimitedOffers {
  const _$_GetLimitedOffers();

  @override
  String toString() {
    return 'LimitedEvent.getLimitedOffers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetLimitedOffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLimitedOffers,
  }) {
    return getLimitedOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getLimitedOffers,
  }) {
    return getLimitedOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLimitedOffers,
    required TResult orElse(),
  }) {
    if (getLimitedOffers != null) {
      return getLimitedOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLimitedOffers value) getLimitedOffers,
  }) {
    return getLimitedOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetLimitedOffers value)? getLimitedOffers,
  }) {
    return getLimitedOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLimitedOffers value)? getLimitedOffers,
    required TResult orElse(),
  }) {
    if (getLimitedOffers != null) {
      return getLimitedOffers(this);
    }
    return orElse();
  }
}

abstract class _GetLimitedOffers implements LimitedEvent {
  const factory _GetLimitedOffers() = _$_GetLimitedOffers;
}

/// @nodoc
class _$LimitedStateTearOff {
  const _$LimitedStateTearOff();

  _LimitedState call(
      {required bool isLoading,
      required List<Limited> limited,
      required Option<Either<MainFailure, List<Limited>>>
          limitedFailureOrSuccessOption}) {
    return _LimitedState(
      isLoading: isLoading,
      limited: limited,
      limitedFailureOrSuccessOption: limitedFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $LimitedState = _$LimitedStateTearOff();

/// @nodoc
mixin _$LimitedState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Limited> get limited => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Limited>>>
      get limitedFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LimitedStateCopyWith<LimitedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LimitedStateCopyWith<$Res> {
  factory $LimitedStateCopyWith(
          LimitedState value, $Res Function(LimitedState) then) =
      _$LimitedStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Limited> limited,
      Option<Either<MainFailure, List<Limited>>>
          limitedFailureOrSuccessOption});
}

/// @nodoc
class _$LimitedStateCopyWithImpl<$Res> implements $LimitedStateCopyWith<$Res> {
  _$LimitedStateCopyWithImpl(this._value, this._then);

  final LimitedState _value;
  // ignore: unused_field
  final $Res Function(LimitedState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? limited = freezed,
    Object? limitedFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      limited: limited == freezed
          ? _value.limited
          : limited // ignore: cast_nullable_to_non_nullable
              as List<Limited>,
      limitedFailureOrSuccessOption: limitedFailureOrSuccessOption == freezed
          ? _value.limitedFailureOrSuccessOption
          : limitedFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Limited>>>,
    ));
  }
}

/// @nodoc
abstract class _$LimitedStateCopyWith<$Res>
    implements $LimitedStateCopyWith<$Res> {
  factory _$LimitedStateCopyWith(
          _LimitedState value, $Res Function(_LimitedState) then) =
      __$LimitedStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Limited> limited,
      Option<Either<MainFailure, List<Limited>>>
          limitedFailureOrSuccessOption});
}

/// @nodoc
class __$LimitedStateCopyWithImpl<$Res> extends _$LimitedStateCopyWithImpl<$Res>
    implements _$LimitedStateCopyWith<$Res> {
  __$LimitedStateCopyWithImpl(
      _LimitedState _value, $Res Function(_LimitedState) _then)
      : super(_value, (v) => _then(v as _LimitedState));

  @override
  _LimitedState get _value => super._value as _LimitedState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? limited = freezed,
    Object? limitedFailureOrSuccessOption = freezed,
  }) {
    return _then(_LimitedState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      limited: limited == freezed
          ? _value.limited
          : limited // ignore: cast_nullable_to_non_nullable
              as List<Limited>,
      limitedFailureOrSuccessOption: limitedFailureOrSuccessOption == freezed
          ? _value.limitedFailureOrSuccessOption
          : limitedFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Limited>>>,
    ));
  }
}

/// @nodoc

class _$_LimitedState implements _LimitedState {
  const _$_LimitedState(
      {required this.isLoading,
      required this.limited,
      required this.limitedFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Limited> limited;
  @override
  final Option<Either<MainFailure, List<Limited>>>
      limitedFailureOrSuccessOption;

  @override
  String toString() {
    return 'LimitedState(isLoading: $isLoading, limited: $limited, limitedFailureOrSuccessOption: $limitedFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LimitedState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.limited, limited) &&
            const DeepCollectionEquality().equals(
                other.limitedFailureOrSuccessOption,
                limitedFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(limited),
      const DeepCollectionEquality().hash(limitedFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$LimitedStateCopyWith<_LimitedState> get copyWith =>
      __$LimitedStateCopyWithImpl<_LimitedState>(this, _$identity);
}

abstract class _LimitedState implements LimitedState {
  const factory _LimitedState(
      {required bool isLoading,
      required List<Limited> limited,
      required Option<Either<MainFailure, List<Limited>>>
          limitedFailureOrSuccessOption}) = _$_LimitedState;

  @override
  bool get isLoading;
  @override
  List<Limited> get limited;
  @override
  Option<Either<MainFailure, List<Limited>>> get limitedFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$LimitedStateCopyWith<_LimitedState> get copyWith =>
      throw _privateConstructorUsedError;
}
