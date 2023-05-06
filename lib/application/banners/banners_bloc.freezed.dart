// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banners_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BannersEventTearOff {
  const _$BannersEventTearOff();

  _GetBanners getBanners() {
    return const _GetBanners();
  }
}

/// @nodoc
const $BannersEvent = _$BannersEventTearOff();

/// @nodoc
mixin _$BannersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBanners value) getBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBanners value)? getBanners,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBanners value)? getBanners,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersEventCopyWith<$Res> {
  factory $BannersEventCopyWith(
          BannersEvent value, $Res Function(BannersEvent) then) =
      _$BannersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BannersEventCopyWithImpl<$Res> implements $BannersEventCopyWith<$Res> {
  _$BannersEventCopyWithImpl(this._value, this._then);

  final BannersEvent _value;
  // ignore: unused_field
  final $Res Function(BannersEvent) _then;
}

/// @nodoc
abstract class _$GetBannersCopyWith<$Res> {
  factory _$GetBannersCopyWith(
          _GetBanners value, $Res Function(_GetBanners) then) =
      __$GetBannersCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetBannersCopyWithImpl<$Res> extends _$BannersEventCopyWithImpl<$Res>
    implements _$GetBannersCopyWith<$Res> {
  __$GetBannersCopyWithImpl(
      _GetBanners _value, $Res Function(_GetBanners) _then)
      : super(_value, (v) => _then(v as _GetBanners));

  @override
  _GetBanners get _value => super._value as _GetBanners;
}

/// @nodoc

class _$_GetBanners implements _GetBanners {
  const _$_GetBanners();

  @override
  String toString() {
    return 'BannersEvent.getBanners()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetBanners);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getBanners,
  }) {
    return getBanners();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getBanners,
  }) {
    return getBanners?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getBanners,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetBanners value) getBanners,
  }) {
    return getBanners(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetBanners value)? getBanners,
  }) {
    return getBanners?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetBanners value)? getBanners,
    required TResult orElse(),
  }) {
    if (getBanners != null) {
      return getBanners(this);
    }
    return orElse();
  }
}

abstract class _GetBanners implements BannersEvent {
  const factory _GetBanners() = _$_GetBanners;
}

/// @nodoc
class _$BannersStateTearOff {
  const _$BannersStateTearOff();

  _BannersState call(
      {required bool isLoading,
      required List<Banners> banners,
      required Option<Either<MainFailure, List<Banners>>>
          bannersFailureOrSuccessOption}) {
    return _BannersState(
      isLoading: isLoading,
      banners: banners,
      bannersFailureOrSuccessOption: bannersFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $BannersState = _$BannersStateTearOff();

/// @nodoc
mixin _$BannersState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Banners> get banners => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Banners>>>
      get bannersFailureOrSuccessOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BannersStateCopyWith<BannersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersStateCopyWith<$Res> {
  factory $BannersStateCopyWith(
          BannersState value, $Res Function(BannersState) then) =
      _$BannersStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Banners> banners,
      Option<Either<MainFailure, List<Banners>>>
          bannersFailureOrSuccessOption});
}

/// @nodoc
class _$BannersStateCopyWithImpl<$Res> implements $BannersStateCopyWith<$Res> {
  _$BannersStateCopyWithImpl(this._value, this._then);

  final BannersState _value;
  // ignore: unused_field
  final $Res Function(BannersState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? banners = freezed,
    Object? bannersFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: banners == freezed
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banners>,
      bannersFailureOrSuccessOption: bannersFailureOrSuccessOption == freezed
          ? _value.bannersFailureOrSuccessOption
          : bannersFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Banners>>>,
    ));
  }
}

/// @nodoc
abstract class _$BannersStateCopyWith<$Res>
    implements $BannersStateCopyWith<$Res> {
  factory _$BannersStateCopyWith(
          _BannersState value, $Res Function(_BannersState) then) =
      __$BannersStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Banners> banners,
      Option<Either<MainFailure, List<Banners>>>
          bannersFailureOrSuccessOption});
}

/// @nodoc
class __$BannersStateCopyWithImpl<$Res> extends _$BannersStateCopyWithImpl<$Res>
    implements _$BannersStateCopyWith<$Res> {
  __$BannersStateCopyWithImpl(
      _BannersState _value, $Res Function(_BannersState) _then)
      : super(_value, (v) => _then(v as _BannersState));

  @override
  _BannersState get _value => super._value as _BannersState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? banners = freezed,
    Object? bannersFailureOrSuccessOption = freezed,
  }) {
    return _then(_BannersState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      banners: banners == freezed
          ? _value.banners
          : banners // ignore: cast_nullable_to_non_nullable
              as List<Banners>,
      bannersFailureOrSuccessOption: bannersFailureOrSuccessOption == freezed
          ? _value.bannersFailureOrSuccessOption
          : bannersFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Banners>>>,
    ));
  }
}

/// @nodoc

class _$_BannersState implements _BannersState {
  const _$_BannersState(
      {required this.isLoading,
      required this.banners,
      required this.bannersFailureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final List<Banners> banners;
  @override
  final Option<Either<MainFailure, List<Banners>>>
      bannersFailureOrSuccessOption;

  @override
  String toString() {
    return 'BannersState(isLoading: $isLoading, banners: $banners, bannersFailureOrSuccessOption: $bannersFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BannersState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.banners, banners) &&
            const DeepCollectionEquality().equals(
                other.bannersFailureOrSuccessOption,
                bannersFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(banners),
      const DeepCollectionEquality().hash(bannersFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$BannersStateCopyWith<_BannersState> get copyWith =>
      __$BannersStateCopyWithImpl<_BannersState>(this, _$identity);
}

abstract class _BannersState implements BannersState {
  const factory _BannersState(
      {required bool isLoading,
      required List<Banners> banners,
      required Option<Either<MainFailure, List<Banners>>>
          bannersFailureOrSuccessOption}) = _$_BannersState;

  @override
  bool get isLoading;
  @override
  List<Banners> get banners;
  @override
  Option<Either<MainFailure, List<Banners>>> get bannersFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$BannersStateCopyWith<_BannersState> get copyWith =>
      throw _privateConstructorUsedError;
}
