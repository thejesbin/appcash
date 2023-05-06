// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banners.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Banners _$BannersFromJson(Map<String, dynamic> json) {
  return _Banners.fromJson(json);
}

/// @nodoc
class _$BannersTearOff {
  const _$BannersTearOff();

  _Banners call(
      {@JsonKey(name: "id") required String? id,
      @JsonKey(name: "image") required String? image,
      @JsonKey(name: "url") required String? url}) {
    return _Banners(
      id: id,
      image: image,
      url: url,
    );
  }

  Banners fromJson(Map<String, Object?> json) {
    return Banners.fromJson(json);
  }
}

/// @nodoc
const $Banners = _$BannersTearOff();

/// @nodoc
mixin _$Banners {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannersCopyWith<Banners> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannersCopyWith<$Res> {
  factory $BannersCopyWith(Banners value, $Res Function(Banners) then) =
      _$BannersCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class _$BannersCopyWithImpl<$Res> implements $BannersCopyWith<$Res> {
  _$BannersCopyWithImpl(this._value, this._then);

  final Banners _value;
  // ignore: unused_field
  final $Res Function(Banners) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$BannersCopyWith<$Res> implements $BannersCopyWith<$Res> {
  factory _$BannersCopyWith(_Banners value, $Res Function(_Banners) then) =
      __$BannersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "url") String? url});
}

/// @nodoc
class __$BannersCopyWithImpl<$Res> extends _$BannersCopyWithImpl<$Res>
    implements _$BannersCopyWith<$Res> {
  __$BannersCopyWithImpl(_Banners _value, $Res Function(_Banners) _then)
      : super(_value, (v) => _then(v as _Banners));

  @override
  _Banners get _value => super._value as _Banners;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? url = freezed,
  }) {
    return _then(_Banners(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Banners implements _Banners {
  const _$_Banners(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "url") required this.url});

  factory _$_Banners.fromJson(Map<String, dynamic> json) =>
      _$$_BannersFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "url")
  final String? url;

  @override
  String toString() {
    return 'Banners(id: $id, image: $image, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Banners &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$BannersCopyWith<_Banners> get copyWith =>
      __$BannersCopyWithImpl<_Banners>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannersToJson(this);
  }
}

abstract class _Banners implements Banners {
  const factory _Banners(
      {@JsonKey(name: "id") required String? id,
      @JsonKey(name: "image") required String? image,
      @JsonKey(name: "url") required String? url}) = _$_Banners;

  factory _Banners.fromJson(Map<String, dynamic> json) = _$_Banners.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "url")
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$BannersCopyWith<_Banners> get copyWith =>
      throw _privateConstructorUsedError;
}
