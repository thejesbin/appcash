// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      password: json['password'] as String?,
      refercode: json['refer_code'] as String?,
      friendscode: json['friends_code'] as String?,
      amountforfriend: json['amountforfriend'] as String?,
      refercount: json['refercount'] as String?,
      totalrefercount: json['total_refercount'] as String?,
      balance: json['balance'] as String?,
      pendingearnings: json['pending_earnings'] as String?,
      totalrewards: json['total_rewards'] as String?,
      totalredeem: json['total_redeem'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
      'refer_code': instance.refercode,
      'friends_code': instance.friendscode,
      'amountforfriend': instance.amountforfriend,
      'refercount': instance.refercount,
      'total_refercount': instance.totalrefercount,
      'balance': instance.balance,
      'pending_earnings': instance.pendingearnings,
      'total_rewards': instance.totalrewards,
      'total_redeem': instance.totalredeem,
    };
