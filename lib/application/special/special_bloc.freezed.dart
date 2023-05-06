// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'special_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpecialEventTearOff {
  const _$SpecialEventTearOff();

  _GetSpecialOffers getSpecialOffers() {
    return const _GetSpecialOffers();
  }
}

/// @nodoc
const $SpecialEvent = _$SpecialEventTearOff();

/// @nodoc
mixin _$SpecialEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSpecialOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSpecialOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSpecialOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSpecialOffers value) getSpecialOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSpecialOffers value)? getSpecialOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSpecialOffers value)? getSpecialOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialEventCopyWith<$Res> {
  factory $SpecialEventCopyWith(
          SpecialEvent value, $Res Function(SpecialEvent) then) =
      _$SpecialEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SpecialEventCopyWithImpl<$Res> implements $SpecialEventCopyWith<$Res> {
  _$SpecialEventCopyWithImpl(this._value, this._then);

  final SpecialEvent _value;
  // ignore: unused_field
  final $Res Function(SpecialEvent) _then;
}

/// @nodoc
abstract class _$GetSpecialOffersCopyWith<$Res> {
  factory _$GetSpecialOffersCopyWith(
          _GetSpecialOffers value, $Res Function(_GetSpecialOffers) then) =
      __$GetSpecialOffersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetSpecialOffersCopyWithImpl<$Res>
    extends _$SpecialEventCopyWithImpl<$Res>
    implements _$GetSpecialOffersCopyWith<$Res> {
  __$GetSpecialOffersCopyWithImpl(
      _GetSpecialOffers _value, $Res Function(_GetSpecialOffers) _then)
      : super(_value, (v) => _then(v as _GetSpecialOffers));

  @override
  _GetSpecialOffers get _value => super._value as _GetSpecialOffers;
}

/// @nodoc

class _$_GetSpecialOffers implements _GetSpecialOffers {
  const _$_GetSpecialOffers();

  @override
  String toString() {
    return 'SpecialEvent.getSpecialOffers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetSpecialOffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSpecialOffers,
  }) {
    return getSpecialOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSpecialOffers,
  }) {
    return getSpecialOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSpecialOffers,
    required TResult orElse(),
  }) {
    if (getSpecialOffers != null) {
      return getSpecialOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSpecialOffers value) getSpecialOffers,
  }) {
    return getSpecialOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSpecialOffers value)? getSpecialOffers,
  }) {
    return getSpecialOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSpecialOffers value)? getSpecialOffers,
    required TResult orElse(),
  }) {
    if (getSpecialOffers != null) {
      return getSpecialOffers(this);
    }
    return orElse();
  }
}

abstract class _GetSpecialOffers implements SpecialEvent {
  const factory _GetSpecialOffers() = _$_GetSpecialOffers;
}

/// @nodoc
class _$SpecialStateTearOff {
  const _$SpecialStateTearOff();

  _SpecialState call(
      {required bool isLoading,
      required List<Special> special,
      required Option<Either<MainFailure, List<Special>>>
          specialFailureOrSuccessOption}) {
    return _SpecialState(
      isLoading: isLoading,
      special: special,
      specialFailureOrSuccessOption: specialFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SpecialState = _$SpecialStateTearOff();

/// @nodoc
mixin _$SpecialState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Special> get special => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Special>>>
      get specialFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpecialStateCopyWith<SpecialState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpecialStateCopyWith<$Res> {
  factory $SpecialStateCopyWith(
          SpecialState value, $Res Function(SpecialState) then) =
      _$SpecialStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Special> special,
      Option<Either<MainFailure, List<Special>>>
          specialFailureOrSuccessOption});
}

/// @nodoc
class _$SpecialStateCopyWithImpl<$Res> implements $SpecialStateCopyWith<$Res> {
  _$SpecialStateCopyWithImpl(this._value, this._then);

  final SpecialState _value;
  // ignore: unused_field
  final $Res Function(SpecialState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? special = freezed,
    Object? specialFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      special: special == freezed
          ? _value.special
          : special // ignore: cast_nullable_to_non_nullable
              as List<Special>,
      specialFailureOrSuccessOption: specialFailureOrSuccessOption == freezed
          ? _value.specialFailureOrSuccessOption
          : specialFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Special>>>,
    ));
  }
}

/// @nodoc
abstract class _$SpecialStateCopyWith<$Res>
    implements $SpecialStateCopyWith<$Res> {
  factory _$SpecialStateCopyWith(
          _SpecialState value, $Res Function(_SpecialState) then) =
      __$SpecialStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Special> special,
      Option<Either<MainFailure, List<Special>>>
          specialFailureOrSuccessOption});
}

/// @nodoc
class __$SpecialStateCopyWithImpl<$Res> extends _$SpecialStateCopyWithImpl<$Res>
    implements _$SpecialStateCopyWith<$Res> {
  __$SpecialStateCopyWithImpl(
      _SpecialState _value, $Res Function(_SpecialState) _then)
      : super(_value, (v) => _then(v as _SpecialState));

  @override
  _SpecialState get _value => super._value as _SpecialState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? special = freezed,
    Object? specialFailureOrSuccessOption = freezed,
  }) {
    return _then(_SpecialState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      special: special == freezed
          ? _value.special
          : special // ignore: cast_nullable_to_non_nullable
              as List<Special>,
      specialFailureOrSuccessOption: specialFailureOrSuccessOption == freezed
          ? _value.specialFailureOrSuccessOption
          : specialFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Special>>>,
    ));
  }
}

/// @nodoc

class _$_SpecialState implements _SpecialState {
  const _$_SpecialState(
      {required this.isLoading,
      required this.special,
      required this.specialFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Special> special;
  @override
  final Option<Either<MainFailure, List<Special>>>
      specialFailureOrSuccessOption;

  @override
  String toString() {
    return 'SpecialState(isLoading: $isLoading, special: $special, specialFailureOrSuccessOption: $specialFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpecialState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.special, special) &&
            const DeepCollectionEquality().equals(
                other.specialFailureOrSuccessOption,
                specialFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(special),
      const DeepCollectionEquality().hash(specialFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SpecialStateCopyWith<_SpecialState> get copyWith =>
      __$SpecialStateCopyWithImpl<_SpecialState>(this, _$identity);
}

abstract class _SpecialState implements SpecialState {
  const factory _SpecialState(
      {required bool isLoading,
      required List<Special> special,
      required Option<Either<MainFailure, List<Special>>>
          specialFailureOrSuccessOption}) = _$_SpecialState;

  @override
  bool get isLoading;
  @override
  List<Special> get special;
  @override
  Option<Either<MainFailure, List<Special>>> get specialFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SpecialStateCopyWith<_SpecialState> get copyWith =>
      throw _privateConstructorUsedError;
}
