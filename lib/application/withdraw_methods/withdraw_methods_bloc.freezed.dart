// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdraw_methods_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WithdrawMethodsEventTearOff {
  const _$WithdrawMethodsEventTearOff();

  _GetWithdrawMethods getWithdrawMethods() {
    return const _GetWithdrawMethods();
  }
}

/// @nodoc
const $WithdrawMethodsEvent = _$WithdrawMethodsEventTearOff();

/// @nodoc
mixin _$WithdrawMethodsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWithdrawMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getWithdrawMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWithdrawMethods,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWithdrawMethods value) getWithdrawMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWithdrawMethods value)? getWithdrawMethods,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWithdrawMethods value)? getWithdrawMethods,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawMethodsEventCopyWith<$Res> {
  factory $WithdrawMethodsEventCopyWith(WithdrawMethodsEvent value,
          $Res Function(WithdrawMethodsEvent) then) =
      _$WithdrawMethodsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WithdrawMethodsEventCopyWithImpl<$Res>
    implements $WithdrawMethodsEventCopyWith<$Res> {
  _$WithdrawMethodsEventCopyWithImpl(this._value, this._then);

  final WithdrawMethodsEvent _value;
  // ignore: unused_field
  final $Res Function(WithdrawMethodsEvent) _then;
}

/// @nodoc
abstract class _$GetWithdrawMethodsCopyWith<$Res> {
  factory _$GetWithdrawMethodsCopyWith(
          _GetWithdrawMethods value, $Res Function(_GetWithdrawMethods) then) =
      __$GetWithdrawMethodsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetWithdrawMethodsCopyWithImpl<$Res>
    extends _$WithdrawMethodsEventCopyWithImpl<$Res>
    implements _$GetWithdrawMethodsCopyWith<$Res> {
  __$GetWithdrawMethodsCopyWithImpl(
      _GetWithdrawMethods _value, $Res Function(_GetWithdrawMethods) _then)
      : super(_value, (v) => _then(v as _GetWithdrawMethods));

  @override
  _GetWithdrawMethods get _value => super._value as _GetWithdrawMethods;
}

/// @nodoc

class _$_GetWithdrawMethods implements _GetWithdrawMethods {
  const _$_GetWithdrawMethods();

  @override
  String toString() {
    return 'WithdrawMethodsEvent.getWithdrawMethods()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetWithdrawMethods);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getWithdrawMethods,
  }) {
    return getWithdrawMethods();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getWithdrawMethods,
  }) {
    return getWithdrawMethods?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getWithdrawMethods,
    required TResult orElse(),
  }) {
    if (getWithdrawMethods != null) {
      return getWithdrawMethods();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetWithdrawMethods value) getWithdrawMethods,
  }) {
    return getWithdrawMethods(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetWithdrawMethods value)? getWithdrawMethods,
  }) {
    return getWithdrawMethods?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetWithdrawMethods value)? getWithdrawMethods,
    required TResult orElse(),
  }) {
    if (getWithdrawMethods != null) {
      return getWithdrawMethods(this);
    }
    return orElse();
  }
}

abstract class _GetWithdrawMethods implements WithdrawMethodsEvent {
  const factory _GetWithdrawMethods() = _$_GetWithdrawMethods;
}

/// @nodoc
class _$WithdrawMethodsStateTearOff {
  const _$WithdrawMethodsStateTearOff();

  _WithdrawMethodsState call(
      {required bool isLoading,
      required List<WithdrawMethods> withdrawMethods,
      required Option<Either<MainFailure, List<WithdrawMethods>>>
          withdrawMethodsFailureOrSuccessOption}) {
    return _WithdrawMethodsState(
      isLoading: isLoading,
      withdrawMethods: withdrawMethods,
      withdrawMethodsFailureOrSuccessOption:
          withdrawMethodsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $WithdrawMethodsState = _$WithdrawMethodsStateTearOff();

/// @nodoc
mixin _$WithdrawMethodsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<WithdrawMethods> get withdrawMethods =>
      throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<WithdrawMethods>>>
      get withdrawMethodsFailureOrSuccessOption =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WithdrawMethodsStateCopyWith<WithdrawMethodsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawMethodsStateCopyWith<$Res> {
  factory $WithdrawMethodsStateCopyWith(WithdrawMethodsState value,
          $Res Function(WithdrawMethodsState) then) =
      _$WithdrawMethodsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<WithdrawMethods> withdrawMethods,
      Option<Either<MainFailure, List<WithdrawMethods>>>
          withdrawMethodsFailureOrSuccessOption});
}

/// @nodoc
class _$WithdrawMethodsStateCopyWithImpl<$Res>
    implements $WithdrawMethodsStateCopyWith<$Res> {
  _$WithdrawMethodsStateCopyWithImpl(this._value, this._then);

  final WithdrawMethodsState _value;
  // ignore: unused_field
  final $Res Function(WithdrawMethodsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? withdrawMethods = freezed,
    Object? withdrawMethodsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawMethods: withdrawMethods == freezed
          ? _value.withdrawMethods
          : withdrawMethods // ignore: cast_nullable_to_non_nullable
              as List<WithdrawMethods>,
      withdrawMethodsFailureOrSuccessOption:
          withdrawMethodsFailureOrSuccessOption == freezed
              ? _value.withdrawMethodsFailureOrSuccessOption
              : withdrawMethodsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<MainFailure, List<WithdrawMethods>>>,
    ));
  }
}

/// @nodoc
abstract class _$WithdrawMethodsStateCopyWith<$Res>
    implements $WithdrawMethodsStateCopyWith<$Res> {
  factory _$WithdrawMethodsStateCopyWith(_WithdrawMethodsState value,
          $Res Function(_WithdrawMethodsState) then) =
      __$WithdrawMethodsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<WithdrawMethods> withdrawMethods,
      Option<Either<MainFailure, List<WithdrawMethods>>>
          withdrawMethodsFailureOrSuccessOption});
}

/// @nodoc
class __$WithdrawMethodsStateCopyWithImpl<$Res>
    extends _$WithdrawMethodsStateCopyWithImpl<$Res>
    implements _$WithdrawMethodsStateCopyWith<$Res> {
  __$WithdrawMethodsStateCopyWithImpl(
      _WithdrawMethodsState _value, $Res Function(_WithdrawMethodsState) _then)
      : super(_value, (v) => _then(v as _WithdrawMethodsState));

  @override
  _WithdrawMethodsState get _value => super._value as _WithdrawMethodsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? withdrawMethods = freezed,
    Object? withdrawMethodsFailureOrSuccessOption = freezed,
  }) {
    return _then(_WithdrawMethodsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      withdrawMethods: withdrawMethods == freezed
          ? _value.withdrawMethods
          : withdrawMethods // ignore: cast_nullable_to_non_nullable
              as List<WithdrawMethods>,
      withdrawMethodsFailureOrSuccessOption:
          withdrawMethodsFailureOrSuccessOption == freezed
              ? _value.withdrawMethodsFailureOrSuccessOption
              : withdrawMethodsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
                  as Option<Either<MainFailure, List<WithdrawMethods>>>,
    ));
  }
}

/// @nodoc

class _$_WithdrawMethodsState implements _WithdrawMethodsState {
  const _$_WithdrawMethodsState(
      {required this.isLoading,
      required this.withdrawMethods,
      required this.withdrawMethodsFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<WithdrawMethods> withdrawMethods;
  @override
  final Option<Either<MainFailure, List<WithdrawMethods>>>
      withdrawMethodsFailureOrSuccessOption;

  @override
  String toString() {
    return 'WithdrawMethodsState(isLoading: $isLoading, withdrawMethods: $withdrawMethods, withdrawMethodsFailureOrSuccessOption: $withdrawMethodsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawMethodsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.withdrawMethods, withdrawMethods) &&
            const DeepCollectionEquality().equals(
                other.withdrawMethodsFailureOrSuccessOption,
                withdrawMethodsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(withdrawMethods),
      const DeepCollectionEquality()
          .hash(withdrawMethodsFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$WithdrawMethodsStateCopyWith<_WithdrawMethodsState> get copyWith =>
      __$WithdrawMethodsStateCopyWithImpl<_WithdrawMethodsState>(
          this, _$identity);
}

abstract class _WithdrawMethodsState implements WithdrawMethodsState {
  const factory _WithdrawMethodsState(
      {required bool isLoading,
      required List<WithdrawMethods> withdrawMethods,
      required Option<Either<MainFailure, List<WithdrawMethods>>>
          withdrawMethodsFailureOrSuccessOption}) = _$_WithdrawMethodsState;

  @override
  bool get isLoading;
  @override
  List<WithdrawMethods> get withdrawMethods;
  @override
  Option<Either<MainFailure, List<WithdrawMethods>>>
      get withdrawMethodsFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$WithdrawMethodsStateCopyWith<_WithdrawMethodsState> get copyWith =>
      throw _privateConstructorUsedError;
}
