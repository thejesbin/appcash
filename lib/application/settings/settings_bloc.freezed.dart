// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SettingsEventTearOff {
  const _$SettingsEventTearOff();

  _GetSettings getSettings() {
    return const _GetSettings();
  }
}

/// @nodoc
const $SettingsEvent = _$SettingsEventTearOff();

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$GetSettingsCopyWith<$Res> {
  factory _$GetSettingsCopyWith(
          _GetSettings value, $Res Function(_GetSettings) then) =
      __$GetSettingsCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetSettingsCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$GetSettingsCopyWith<$Res> {
  __$GetSettingsCopyWithImpl(
      _GetSettings _value, $Res Function(_GetSettings) _then)
      : super(_value, (v) => _then(v as _GetSettings));

  @override
  _GetSettings get _value => super._value as _GetSettings;
}

/// @nodoc

class _$_GetSettings implements _GetSettings {
  const _$_GetSettings();

  @override
  String toString() {
    return 'SettingsEvent.getSettings()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetSettings);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSettings,
  }) {
    return getSettings();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getSettings,
  }) {
    return getSettings?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSettings,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSettings value) getSettings,
  }) {
    return getSettings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
  }) {
    return getSettings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSettings value)? getSettings,
    required TResult orElse(),
  }) {
    if (getSettings != null) {
      return getSettings(this);
    }
    return orElse();
  }
}

abstract class _GetSettings implements SettingsEvent {
  const factory _GetSettings() = _$_GetSettings;
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {required bool isLoading,
      required List<Settings> settings,
      required Option<Either<MainFailure, List<Settings>>>
          settingsFailureOrSuccessOption}) {
    return _SettingsState(
      isLoading: isLoading,
      settings: settings,
      settingsFailureOrSuccessOption: settingsFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Settings> get settings => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Settings>>>
      get settingsFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Settings> settings,
      Option<Either<MainFailure, List<Settings>>>
          settingsFailureOrSuccessOption});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? settings = freezed,
    Object? settingsFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as List<Settings>,
      settingsFailureOrSuccessOption: settingsFailureOrSuccessOption == freezed
          ? _value.settingsFailureOrSuccessOption
          : settingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Settings>>>,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Settings> settings,
      Option<Either<MainFailure, List<Settings>>>
          settingsFailureOrSuccessOption});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? settings = freezed,
    Object? settingsFailureOrSuccessOption = freezed,
  }) {
    return _then(_SettingsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as List<Settings>,
      settingsFailureOrSuccessOption: settingsFailureOrSuccessOption == freezed
          ? _value.settingsFailureOrSuccessOption
          : settingsFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Settings>>>,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.isLoading,
      required this.settings,
      required this.settingsFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Settings> settings;
  @override
  final Option<Either<MainFailure, List<Settings>>>
      settingsFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsState(isLoading: $isLoading, settings: $settings, settingsFailureOrSuccessOption: $settingsFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(
                other.settingsFailureOrSuccessOption,
                settingsFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(settingsFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
      {required bool isLoading,
      required List<Settings> settings,
      required Option<Either<MainFailure, List<Settings>>>
          settingsFailureOrSuccessOption}) = _$_SettingsState;

  @override
  bool get isLoading;
  @override
  List<Settings> get settings;
  @override
  Option<Either<MainFailure, List<Settings>>>
      get settingsFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
