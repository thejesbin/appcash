// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'withdraw_methods.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WithdrawMethods _$WithdrawMethodsFromJson(Map<String, dynamic> json) {
  return _WithdrawMethods.fromJson(json);
}

/// @nodoc
class _$WithdrawMethodsTearOff {
  const _$WithdrawMethodsTearOff();

  _WithdrawMethods call(
      {@JsonKey(name: "id") required String? id,
      @JsonKey(name: "method") required String? method,
      @JsonKey(name: "image") required String? image,
      @JsonKey(name: "type") required String? type,
      @JsonKey(name: "amount") required String? amount}) {
    return _WithdrawMethods(
      id: id,
      method: method,
      image: image,
      type: type,
      amount: amount,
    );
  }

  WithdrawMethods fromJson(Map<String, Object?> json) {
    return WithdrawMethods.fromJson(json);
  }
}

/// @nodoc
const $WithdrawMethods = _$WithdrawMethodsTearOff();

/// @nodoc
mixin _$WithdrawMethods {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "method")
  String? get method => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WithdrawMethodsCopyWith<WithdrawMethods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WithdrawMethodsCopyWith<$Res> {
  factory $WithdrawMethodsCopyWith(
          WithdrawMethods value, $Res Function(WithdrawMethods) then) =
      _$WithdrawMethodsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "method") String? method,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "amount") String? amount});
}

/// @nodoc
class _$WithdrawMethodsCopyWithImpl<$Res>
    implements $WithdrawMethodsCopyWith<$Res> {
  _$WithdrawMethodsCopyWithImpl(this._value, this._then);

  final WithdrawMethods _value;
  // ignore: unused_field
  final $Res Function(WithdrawMethods) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? image = freezed,
    Object? type = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WithdrawMethodsCopyWith<$Res>
    implements $WithdrawMethodsCopyWith<$Res> {
  factory _$WithdrawMethodsCopyWith(
          _WithdrawMethods value, $Res Function(_WithdrawMethods) then) =
      __$WithdrawMethodsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "method") String? method,
      @JsonKey(name: "image") String? image,
      @JsonKey(name: "type") String? type,
      @JsonKey(name: "amount") String? amount});
}

/// @nodoc
class __$WithdrawMethodsCopyWithImpl<$Res>
    extends _$WithdrawMethodsCopyWithImpl<$Res>
    implements _$WithdrawMethodsCopyWith<$Res> {
  __$WithdrawMethodsCopyWithImpl(
      _WithdrawMethods _value, $Res Function(_WithdrawMethods) _then)
      : super(_value, (v) => _then(v as _WithdrawMethods));

  @override
  _WithdrawMethods get _value => super._value as _WithdrawMethods;

  @override
  $Res call({
    Object? id = freezed,
    Object? method = freezed,
    Object? image = freezed,
    Object? type = freezed,
    Object? amount = freezed,
  }) {
    return _then(_WithdrawMethods(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WithdrawMethods implements _WithdrawMethods {
  const _$_WithdrawMethods(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "method") required this.method,
      @JsonKey(name: "image") required this.image,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "amount") required this.amount});

  factory _$_WithdrawMethods.fromJson(Map<String, dynamic> json) =>
      _$$_WithdrawMethodsFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "method")
  final String? method;
  @override
  @JsonKey(name: "image")
  final String? image;
  @override
  @JsonKey(name: "type")
  final String? type;
  @override
  @JsonKey(name: "amount")
  final String? amount;

  @override
  String toString() {
    return 'WithdrawMethods(id: $id, method: $method, image: $image, type: $type, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WithdrawMethods &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$WithdrawMethodsCopyWith<_WithdrawMethods> get copyWith =>
      __$WithdrawMethodsCopyWithImpl<_WithdrawMethods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WithdrawMethodsToJson(this);
  }
}

abstract class _WithdrawMethods implements WithdrawMethods {
  const factory _WithdrawMethods(
      {@JsonKey(name: "id") required String? id,
      @JsonKey(name: "method") required String? method,
      @JsonKey(name: "image") required String? image,
      @JsonKey(name: "type") required String? type,
      @JsonKey(name: "amount") required String? amount}) = _$_WithdrawMethods;

  factory _WithdrawMethods.fromJson(Map<String, dynamic> json) =
      _$_WithdrawMethods.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "method")
  String? get method;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(name: "type")
  String? get type;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(ignore: true)
  _$WithdrawMethodsCopyWith<_WithdrawMethods> get copyWith =>
      throw _privateConstructorUsedError;
}
