// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'redeem_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RedeemHistoryEventTearOff {
  const _$RedeemHistoryEventTearOff();

  _GetRedeemHistory getRedeemHistory() {
    return const _GetRedeemHistory();
  }
}

/// @nodoc
const $RedeemHistoryEvent = _$RedeemHistoryEventTearOff();

/// @nodoc
mixin _$RedeemHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRedeemHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRedeemHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRedeemHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRedeemHistory value) getRedeemHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRedeemHistory value)? getRedeemHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRedeemHistory value)? getRedeemHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemHistoryEventCopyWith<$Res> {
  factory $RedeemHistoryEventCopyWith(
          RedeemHistoryEvent value, $Res Function(RedeemHistoryEvent) then) =
      _$RedeemHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RedeemHistoryEventCopyWithImpl<$Res>
    implements $RedeemHistoryEventCopyWith<$Res> {
  _$RedeemHistoryEventCopyWithImpl(this._value, this._then);

  final RedeemHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(RedeemHistoryEvent) _then;
}

/// @nodoc
abstract class _$GetRedeemHistoryCopyWith<$Res> {
  factory _$GetRedeemHistoryCopyWith(
          _GetRedeemHistory value, $Res Function(_GetRedeemHistory) then) =
      __$GetRedeemHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetRedeemHistoryCopyWithImpl<$Res>
    extends _$RedeemHistoryEventCopyWithImpl<$Res>
    implements _$GetRedeemHistoryCopyWith<$Res> {
  __$GetRedeemHistoryCopyWithImpl(
      _GetRedeemHistory _value, $Res Function(_GetRedeemHistory) _then)
      : super(_value, (v) => _then(v as _GetRedeemHistory));

  @override
  _GetRedeemHistory get _value => super._value as _GetRedeemHistory;
}

/// @nodoc

class _$_GetRedeemHistory implements _GetRedeemHistory {
  const _$_GetRedeemHistory();

  @override
  String toString() {
    return 'RedeemHistoryEvent.getRedeemHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetRedeemHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRedeemHistory,
  }) {
    return getRedeemHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getRedeemHistory,
  }) {
    return getRedeemHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRedeemHistory,
    required TResult orElse(),
  }) {
    if (getRedeemHistory != null) {
      return getRedeemHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRedeemHistory value) getRedeemHistory,
  }) {
    return getRedeemHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetRedeemHistory value)? getRedeemHistory,
  }) {
    return getRedeemHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRedeemHistory value)? getRedeemHistory,
    required TResult orElse(),
  }) {
    if (getRedeemHistory != null) {
      return getRedeemHistory(this);
    }
    return orElse();
  }
}

abstract class _GetRedeemHistory implements RedeemHistoryEvent {
  const factory _GetRedeemHistory() = _$_GetRedeemHistory;
}

/// @nodoc
class _$RedeemHistoryStateTearOff {
  const _$RedeemHistoryStateTearOff();

  _RedeemHistoryState call(
      {required bool isLoading,
      required List<RedeemHistory> redeemHistory,
      required Option<Either<MainFailure, List<RedeemHistory>>>
          redeemHistoryFailureOrSuccessOption}) {
    return _RedeemHistoryState(
      isLoading: isLoading,
      redeemHistory: redeemHistory,
      redeemHistoryFailureOrSuccessOption: redeemHistoryFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $RedeemHistoryState = _$RedeemHistoryStateTearOff();

/// @nodoc
mixin _$RedeemHistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<RedeemHistory> get redeemHistory => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<RedeemHistory>>>
      get redeemHistoryFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RedeemHistoryStateCopyWith<RedeemHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RedeemHistoryStateCopyWith<$Res> {
  factory $RedeemHistoryStateCopyWith(
          RedeemHistoryState value, $Res Function(RedeemHistoryState) then) =
      _$RedeemHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<RedeemHistory> redeemHistory,
      Option<Either<MainFailure, List<RedeemHistory>>>
          redeemHistoryFailureOrSuccessOption});
}

/// @nodoc
class _$RedeemHistoryStateCopyWithImpl<$Res>
    implements $RedeemHistoryStateCopyWith<$Res> {
  _$RedeemHistoryStateCopyWithImpl(this._value, this._then);

  final RedeemHistoryState _value;
  // ignore: unused_field
  final $Res Function(RedeemHistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? redeemHistory = freezed,
    Object? redeemHistoryFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      redeemHistory: redeemHistory == freezed
          ? _value.redeemHistory
          : redeemHistory // ignore: cast_nullable_to_non_nullable
              as List<RedeemHistory>,
      redeemHistoryFailureOrSuccessOption: redeemHistoryFailureOrSuccessOption ==
              freezed
          ? _value.redeemHistoryFailureOrSuccessOption
          : redeemHistoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<RedeemHistory>>>,
    ));
  }
}

/// @nodoc
abstract class _$RedeemHistoryStateCopyWith<$Res>
    implements $RedeemHistoryStateCopyWith<$Res> {
  factory _$RedeemHistoryStateCopyWith(
          _RedeemHistoryState value, $Res Function(_RedeemHistoryState) then) =
      __$RedeemHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<RedeemHistory> redeemHistory,
      Option<Either<MainFailure, List<RedeemHistory>>>
          redeemHistoryFailureOrSuccessOption});
}

/// @nodoc
class __$RedeemHistoryStateCopyWithImpl<$Res>
    extends _$RedeemHistoryStateCopyWithImpl<$Res>
    implements _$RedeemHistoryStateCopyWith<$Res> {
  __$RedeemHistoryStateCopyWithImpl(
      _RedeemHistoryState _value, $Res Function(_RedeemHistoryState) _then)
      : super(_value, (v) => _then(v as _RedeemHistoryState));

  @override
  _RedeemHistoryState get _value => super._value as _RedeemHistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? redeemHistory = freezed,
    Object? redeemHistoryFailureOrSuccessOption = freezed,
  }) {
    return _then(_RedeemHistoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      redeemHistory: redeemHistory == freezed
          ? _value.redeemHistory
          : redeemHistory // ignore: cast_nullable_to_non_nullable
              as List<RedeemHistory>,
      redeemHistoryFailureOrSuccessOption: redeemHistoryFailureOrSuccessOption ==
              freezed
          ? _value.redeemHistoryFailureOrSuccessOption
          : redeemHistoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<RedeemHistory>>>,
    ));
  }
}

/// @nodoc

class _$_RedeemHistoryState implements _RedeemHistoryState {
  const _$_RedeemHistoryState(
      {required this.isLoading,
      required this.redeemHistory,
      required this.redeemHistoryFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<RedeemHistory> redeemHistory;
  @override
  final Option<Either<MainFailure, List<RedeemHistory>>>
      redeemHistoryFailureOrSuccessOption;

  @override
  String toString() {
    return 'RedeemHistoryState(isLoading: $isLoading, redeemHistory: $redeemHistory, redeemHistoryFailureOrSuccessOption: $redeemHistoryFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RedeemHistoryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.redeemHistory, redeemHistory) &&
            const DeepCollectionEquality().equals(
                other.redeemHistoryFailureOrSuccessOption,
                redeemHistoryFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(redeemHistory),
      const DeepCollectionEquality().hash(redeemHistoryFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$RedeemHistoryStateCopyWith<_RedeemHistoryState> get copyWith =>
      __$RedeemHistoryStateCopyWithImpl<_RedeemHistoryState>(this, _$identity);
}

abstract class _RedeemHistoryState implements RedeemHistoryState {
  const factory _RedeemHistoryState(
      {required bool isLoading,
      required List<RedeemHistory> redeemHistory,
      required Option<Either<MainFailure, List<RedeemHistory>>>
          redeemHistoryFailureOrSuccessOption}) = _$_RedeemHistoryState;

  @override
  bool get isLoading;
  @override
  List<RedeemHistory> get redeemHistory;
  @override
  Option<Either<MainFailure, List<RedeemHistory>>>
      get redeemHistoryFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$RedeemHistoryStateCopyWith<_RedeemHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
