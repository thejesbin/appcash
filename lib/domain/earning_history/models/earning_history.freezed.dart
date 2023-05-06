// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'earning_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EarningHistory _$EarningHistoryFromJson(Map<String, dynamic> json) {
  return _EarningHistory.fromJson(json);
}

/// @nodoc
class _$EarningHistoryTearOff {
  const _$EarningHistoryTearOff();

  _EarningHistory call(
      {@JsonKey(name: "id") required String? id,
      @JsonKey(name: "userid") required String? userid,
      @JsonKey(name: "title") required String? title,
      @JsonKey(name: "amount") required String? amount,
      @JsonKey(name: "image") required String? image}) {
    return _EarningHistory(
      id: id,
      userid: userid,
      title: title,
      amount: amount,
      image: image,
    );
  }

  EarningHistory fromJson(Map<String, Object?> json) {
    return EarningHistory.fromJson(json);
  }
}

/// @nodoc
const $EarningHistory = _$EarningHistoryTearOff();

/// @nodoc
mixin _$EarningHistory {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "userid")
  String? get userid => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  String? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "image")
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EarningHistoryCopyWith<EarningHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EarningHistoryCopyWith<$Res> {
  factory $EarningHistoryCopyWith(
          EarningHistory value, $Res Function(EarningHistory) then) =
      _$EarningHistoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "userid") String? userid,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class _$EarningHistoryCopyWithImpl<$Res>
    implements $EarningHistoryCopyWith<$Res> {
  _$EarningHistoryCopyWithImpl(this._value, this._then);

  final EarningHistory _value;
  // ignore: unused_field
  final $Res Function(EarningHistory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$EarningHistoryCopyWith<$Res>
    implements $EarningHistoryCopyWith<$Res> {
  factory _$EarningHistoryCopyWith(
          _EarningHistory value, $Res Function(_EarningHistory) then) =
      __$EarningHistoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "userid") String? userid,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "amount") String? amount,
      @JsonKey(name: "image") String? image});
}

/// @nodoc
class __$EarningHistoryCopyWithImpl<$Res>
    extends _$EarningHistoryCopyWithImpl<$Res>
    implements _$EarningHistoryCopyWith<$Res> {
  __$EarningHistoryCopyWithImpl(
      _EarningHistory _value, $Res Function(_EarningHistory) _then)
      : super(_value, (v) => _then(v as _EarningHistory));

  @override
  _EarningHistory get _value => super._value as _EarningHistory;

  @override
  $Res call({
    Object? id = freezed,
    Object? userid = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? image = freezed,
  }) {
    return _then(_EarningHistory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EarningHistory implements _EarningHistory {
  const _$_EarningHistory(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "userid") required this.userid,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "amount") required this.amount,
      @JsonKey(name: "image") required this.image});

  factory _$_EarningHistory.fromJson(Map<String, dynamic> json) =>
      _$$_EarningHistoryFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "userid")
  final String? userid;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "amount")
  final String? amount;
  @override
  @JsonKey(name: "image")
  final String? image;

  @override
  String toString() {
    return 'EarningHistory(id: $id, userid: $userid, title: $title, amount: $amount, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarningHistory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.userid, userid) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(userid),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$EarningHistoryCopyWith<_EarningHistory> get copyWith =>
      __$EarningHistoryCopyWithImpl<_EarningHistory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EarningHistoryToJson(this);
  }
}

abstract class _EarningHistory implements EarningHistory {
  const factory _EarningHistory(
      {@JsonKey(name: "id") required String? id,
      @JsonKey(name: "userid") required String? userid,
      @JsonKey(name: "title") required String? title,
      @JsonKey(name: "amount") required String? amount,
      @JsonKey(name: "image") required String? image}) = _$_EarningHistory;

  factory _EarningHistory.fromJson(Map<String, dynamic> json) =
      _$_EarningHistory.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "userid")
  String? get userid;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "amount")
  String? get amount;
  @override
  @JsonKey(name: "image")
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$EarningHistoryCopyWith<_EarningHistory> get copyWith =>
      throw _privateConstructorUsedError;
}
