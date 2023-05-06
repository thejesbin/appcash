// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'earning_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EarningHistoryEventTearOff {
  const _$EarningHistoryEventTearOff();

  _GetEarningHistory getEarningHistory() {
    return const _GetEarningHistory();
  }
}

/// @nodoc
const $EarningHistoryEvent = _$EarningHistoryEventTearOff();

/// @nodoc
mixin _$EarningHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEarningHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEarningHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEarningHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEarningHistory value) getEarningHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEarningHistory value)? getEarningHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEarningHistory value)? getEarningHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningHistoryEventCopyWith<$Res> {
  factory $EarningHistoryEventCopyWith(
          EarningHistoryEvent value, $Res Function(EarningHistoryEvent) then) =
      _$EarningHistoryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EarningHistoryEventCopyWithImpl<$Res>
    implements $EarningHistoryEventCopyWith<$Res> {
  _$EarningHistoryEventCopyWithImpl(this._value, this._then);

  final EarningHistoryEvent _value;
  // ignore: unused_field
  final $Res Function(EarningHistoryEvent) _then;
}

/// @nodoc
abstract class _$GetEarningHistoryCopyWith<$Res> {
  factory _$GetEarningHistoryCopyWith(
          _GetEarningHistory value, $Res Function(_GetEarningHistory) then) =
      __$GetEarningHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetEarningHistoryCopyWithImpl<$Res>
    extends _$EarningHistoryEventCopyWithImpl<$Res>
    implements _$GetEarningHistoryCopyWith<$Res> {
  __$GetEarningHistoryCopyWithImpl(
      _GetEarningHistory _value, $Res Function(_GetEarningHistory) _then)
      : super(_value, (v) => _then(v as _GetEarningHistory));

  @override
  _GetEarningHistory get _value => super._value as _GetEarningHistory;
}

/// @nodoc

class _$_GetEarningHistory implements _GetEarningHistory {
  const _$_GetEarningHistory();

  @override
  String toString() {
    return 'EarningHistoryEvent.getEarningHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetEarningHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEarningHistory,
  }) {
    return getEarningHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getEarningHistory,
  }) {
    return getEarningHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEarningHistory,
    required TResult orElse(),
  }) {
    if (getEarningHistory != null) {
      return getEarningHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetEarningHistory value) getEarningHistory,
  }) {
    return getEarningHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetEarningHistory value)? getEarningHistory,
  }) {
    return getEarningHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetEarningHistory value)? getEarningHistory,
    required TResult orElse(),
  }) {
    if (getEarningHistory != null) {
      return getEarningHistory(this);
    }
    return orElse();
  }
}

abstract class _GetEarningHistory implements EarningHistoryEvent {
  const factory _GetEarningHistory() = _$_GetEarningHistory;
}

/// @nodoc
class _$EarningHistoryStateTearOff {
  const _$EarningHistoryStateTearOff();

  _EarningHistoryState call(
      {required bool isLoading,
      required List<EarningHistory> earningHistory,
      required Option<Either<MainFailure, List<EarningHistory>>>
          earningHistoryFailureOrSuccessOption}) {
    return _EarningHistoryState(
      isLoading: isLoading,
      earningHistory: earningHistory,
      earningHistoryFailureOrSuccessOption:
          earningHistoryFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $EarningHistoryState = _$EarningHistoryStateTearOff();

/// @nodoc
mixin _$EarningHistoryState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<EarningHistory> get earningHistory => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<EarningHistory>>>
      get earningHistoryFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EarningHistoryStateCopyWith<EarningHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningHistoryStateCopyWith<$Res> {
  factory $EarningHistoryStateCopyWith(
          EarningHistoryState value, $Res Function(EarningHistoryState) then) =
      _$EarningHistoryStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<EarningHistory> earningHistory,
      Option<Either<MainFailure, List<EarningHistory>>>
          earningHistoryFailureOrSuccessOption});
}

/// @nodoc
class _$EarningHistoryStateCopyWithImpl<$Res>
    implements $EarningHistoryStateCopyWith<$Res> {
  _$EarningHistoryStateCopyWithImpl(this._value, this._then);

  final EarningHistoryState _value;
  // ignore: unused_field
  final $Res Function(EarningHistoryState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? earningHistory = freezed,
    Object? earningHistoryFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      earningHistory: earningHistory == freezed
          ? _value.earningHistory
          : earningHistory // ignore: cast_nullable_to_non_nullable
              as List<EarningHistory>,
      earningHistoryFailureOrSuccessOption: earningHistoryFailureOrSuccessOption ==
              freezed
          ? _value.earningHistoryFailureOrSuccessOption
          : earningHistoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<EarningHistory>>>,
    ));
  }
}

/// @nodoc
abstract class _$EarningHistoryStateCopyWith<$Res>
    implements $EarningHistoryStateCopyWith<$Res> {
  factory _$EarningHistoryStateCopyWith(_EarningHistoryState value,
          $Res Function(_EarningHistoryState) then) =
      __$EarningHistoryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<EarningHistory> earningHistory,
      Option<Either<MainFailure, List<EarningHistory>>>
          earningHistoryFailureOrSuccessOption});
}

/// @nodoc
class __$EarningHistoryStateCopyWithImpl<$Res>
    extends _$EarningHistoryStateCopyWithImpl<$Res>
    implements _$EarningHistoryStateCopyWith<$Res> {
  __$EarningHistoryStateCopyWithImpl(
      _EarningHistoryState _value, $Res Function(_EarningHistoryState) _then)
      : super(_value, (v) => _then(v as _EarningHistoryState));

  @override
  _EarningHistoryState get _value => super._value as _EarningHistoryState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? earningHistory = freezed,
    Object? earningHistoryFailureOrSuccessOption = freezed,
  }) {
    return _then(_EarningHistoryState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      earningHistory: earningHistory == freezed
          ? _value.earningHistory
          : earningHistory // ignore: cast_nullable_to_non_nullable
              as List<EarningHistory>,
      earningHistoryFailureOrSuccessOption: earningHistoryFailureOrSuccessOption ==
              freezed
          ? _value.earningHistoryFailureOrSuccessOption
          : earningHistoryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<EarningHistory>>>,
    ));
  }
}

/// @nodoc

class _$_EarningHistoryState implements _EarningHistoryState {
  const _$_EarningHistoryState(
      {required this.isLoading,
      required this.earningHistory,
      required this.earningHistoryFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<EarningHistory> earningHistory;
  @override
  final Option<Either<MainFailure, List<EarningHistory>>>
      earningHistoryFailureOrSuccessOption;

  @override
  String toString() {
    return 'EarningHistoryState(isLoading: $isLoading, earningHistory: $earningHistory, earningHistoryFailureOrSuccessOption: $earningHistoryFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarningHistoryState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.earningHistory, earningHistory) &&
            const DeepCollectionEquality().equals(
                other.earningHistoryFailureOrSuccessOption,
                earningHistoryFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(earningHistory),
      const DeepCollectionEquality()
          .hash(earningHistoryFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$EarningHistoryStateCopyWith<_EarningHistoryState> get copyWith =>
      __$EarningHistoryStateCopyWithImpl<_EarningHistoryState>(
          this, _$identity);
}

abstract class _EarningHistoryState implements EarningHistoryState {
  const factory _EarningHistoryState(
      {required bool isLoading,
      required List<EarningHistory> earningHistory,
      required Option<Either<MainFailure, List<EarningHistory>>>
          earningHistoryFailureOrSuccessOption}) = _$_EarningHistoryState;

  @override
  bool get isLoading;
  @override
  List<EarningHistory> get earningHistory;
  @override
  Option<Either<MainFailure, List<EarningHistory>>>
      get earningHistoryFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$EarningHistoryStateCopyWith<_EarningHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}
