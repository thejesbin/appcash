// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'redeem_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RedeemHistory _$$_RedeemHistoryFromJson(Map<String, dynamic> json) =>
    _$_RedeemHistory(
      id: json['id'] as String?,
      userid: json['userid'] as String?,
      method: json['method'] as String?,
      amount: json['amount'] as String?,
      image: json['image'] as String?,
      color: json['color'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$_RedeemHistoryToJson(_$_RedeemHistory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userid': instance.userid,
      'method': instance.method,
      'amount': instance.amount,
      'image': instance.image,
      'color': instance.color,
      'status': instance.status,
    };
