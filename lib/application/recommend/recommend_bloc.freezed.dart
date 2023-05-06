// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'recommend_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecommendEventTearOff {
  const _$RecommendEventTearOff();

  _GetRecommendOffers getRecommendOffers() {
    return const _GetRecommendOffers();
  }
}

/// @nodoc
const $RecommendEvent = _$RecommendEventTearOff();

/// @nodoc
mixin _$RecommendEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecommendOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRecommendOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecommendOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecommendOffers value) getRecommendOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecommendOffers value)? getRecommendOffers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecommendOffers value)? getRecommendOffers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendEventCopyWith<$Res> {
  factory $RecommendEventCopyWith(
          RecommendEvent value, $Res Function(RecommendEvent) then) =
      _$RecommendEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecommendEventCopyWithImpl<$Res>
    implements $RecommendEventCopyWith<$Res> {
  _$RecommendEventCopyWithImpl(this._value, this._then);

  final RecommendEvent _value;
  // ignore: unused_field
  final $Res Function(RecommendEvent) _then;
}

/// @nodoc
abstract class _$GetRecommendOffersCopyWith<$Res> {
  factory _$GetRecommendOffersCopyWith(
          _GetRecommendOffers value, $Res Function(_GetRecommendOffers) then) =
      __$GetRecommendOffersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetRecommendOffersCopyWithImpl<$Res>
    extends _$RecommendEventCopyWithImpl<$Res>
    implements _$GetRecommendOffersCopyWith<$Res> {
  __$GetRecommendOffersCopyWithImpl(
      _GetRecommendOffers _value, $Res Function(_GetRecommendOffers) _then)
      : super(_value, (v) => _then(v as _GetRecommendOffers));

  @override
  _GetRecommendOffers get _value => super._value as _GetRecommendOffers;
}

/// @nodoc

class _$_GetRecommendOffers implements _GetRecommendOffers {
  const _$_GetRecommendOffers();

  @override
  String toString() {
    return 'RecommendEvent.getRecommendOffers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetRecommendOffers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRecommendOffers,
  }) {
    return getRecommendOffers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRecommendOffers,
  }) {
    return getRecommendOffers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRecommendOffers,
    required TResult orElse(),
  }) {
    if (getRecommendOffers != null) {
      return getRecommendOffers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRecommendOffers value) getRecommendOffers,
  }) {
    return getRecommendOffers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRecommendOffers value)? getRecommendOffers,
  }) {
    return getRecommendOffers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRecommendOffers value)? getRecommendOffers,
    required TResult orElse(),
  }) {
    if (getRecommendOffers != null) {
      return getRecommendOffers(this);
    }
    return orElse();
  }
}

abstract class _GetRecommendOffers implements RecommendEvent {
  const factory _GetRecommendOffers() = _$_GetRecommendOffers;
}

/// @nodoc
class _$RecommendStateTearOff {
  const _$RecommendStateTearOff();

  _RecommendState call(
      {required bool isLoading,
      required List<Recommend> recommend,
      required Option<Either<MainFailure, List<Recommend>>>
          recommendFailureOrSuccessOption}) {
    return _RecommendState(
      isLoading: isLoading,
      recommend: recommend,
      recommendFailureOrSuccessOption: recommendFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RecommendState = _$RecommendStateTearOff();

/// @nodoc
mixin _$RecommendState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Recommend> get recommend => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Recommend>>>
      get recommendFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecommendStateCopyWith<RecommendState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecommendStateCopyWith<$Res> {
  factory $RecommendStateCopyWith(
          RecommendState value, $Res Function(RecommendState) then) =
      _$RecommendStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Recommend> recommend,
      Option<Either<MainFailure, List<Recommend>>>
          recommendFailureOrSuccessOption});
}

/// @nodoc
class _$RecommendStateCopyWithImpl<$Res>
    implements $RecommendStateCopyWith<$Res> {
  _$RecommendStateCopyWithImpl(this._value, this._then);

  final RecommendState _value;
  // ignore: unused_field
  final $Res Function(RecommendState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? recommend = freezed,
    Object? recommendFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recommend: recommend == freezed
          ? _value.recommend
          : recommend // ignore: cast_nullable_to_non_nullable
              as List<Recommend>,
      recommendFailureOrSuccessOption: recommendFailureOrSuccessOption ==
              freezed
          ? _value.recommendFailureOrSuccessOption
          : recommendFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Recommend>>>,
    ));
  }
}

/// @nodoc
abstract class _$RecommendStateCopyWith<$Res>
    implements $RecommendStateCopyWith<$Res> {
  factory _$RecommendStateCopyWith(
          _RecommendState value, $Res Function(_RecommendState) then) =
      __$RecommendStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Recommend> recommend,
      Option<Either<MainFailure, List<Recommend>>>
          recommendFailureOrSuccessOption});
}

/// @nodoc
class __$RecommendStateCopyWithImpl<$Res>
    extends _$RecommendStateCopyWithImpl<$Res>
    implements _$RecommendStateCopyWith<$Res> {
  __$RecommendStateCopyWithImpl(
      _RecommendState _value, $Res Function(_RecommendState) _then)
      : super(_value, (v) => _then(v as _RecommendState));

  @override
  _RecommendState get _value => super._value as _RecommendState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? recommend = freezed,
    Object? recommendFailureOrSuccessOption = freezed,
  }) {
    return _then(_RecommendState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      recommend: recommend == freezed
          ? _value.recommend
          : recommend // ignore: cast_nullable_to_non_nullable
              as List<Recommend>,
      recommendFailureOrSuccessOption: recommendFailureOrSuccessOption ==
              freezed
          ? _value.recommendFailureOrSuccessOption
          : recommendFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Recommend>>>,
    ));
  }
}

/// @nodoc

class _$_RecommendState implements _RecommendState {
  const _$_RecommendState(
      {required this.isLoading,
      required this.recommend,
      required this.recommendFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Recommend> recommend;
  @override
  final Option<Either<MainFailure, List<Recommend>>>
      recommendFailureOrSuccessOption;

  @override
  String toString() {
    return 'RecommendState(isLoading: $isLoading, recommend: $recommend, recommendFailureOrSuccessOption: $recommendFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RecommendState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.recommend, recommend) &&
            const DeepCollectionEquality().equals(
                other.recommendFailureOrSuccessOption,
                recommendFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(recommend),
      const DeepCollectionEquality().hash(recommendFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$RecommendStateCopyWith<_RecommendState> get copyWith =>
      __$RecommendStateCopyWithImpl<_RecommendState>(this, _$identity);
}

abstract class _RecommendState implements RecommendState {
  const factory _RecommendState(
      {required bool isLoading,
      required List<Recommend> recommend,
      required Option<Either<MainFailure, List<Recommend>>>
          recommendFailureOrSuccessOption}) = _$_RecommendState;

  @override
  bool get isLoading;
  @override
  List<Recommend> get recommend;
  @override
  Option<Either<MainFailure, List<Recommend>>>
      get recommendFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$RecommendStateCopyWith<_RecommendState> get copyWith =>
      throw _privateConstructorUsedError;
}
