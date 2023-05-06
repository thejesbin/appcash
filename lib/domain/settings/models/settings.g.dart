// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      id: json['id'] as String?,
      update: json['updation'] as String?,
      maintenance: json['maintenance'] as String?,
      withdraw: json['withdraw'] as String?,
      privacy: json['privacy'] as String?,
      steycode: json['steycode'] as String?,
      updateUrl: json['update_url'] as String?,
      per_refer: json['per_refer'] as String?,
      friends_amount: json['friends_amount'] as String?,
      app_url: json['app_url'] as String?,
      mail: json['mail'] as String?,
      telegram: json['telegram'] as String?,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'id': instance.id,
      'updation': instance.update,
      'maintenance': instance.maintenance,
      'withdraw': instance.withdraw,
      'privacy': instance.privacy,
      'steycode': instance.steycode,
      'update_url': instance.updateUrl,
      'per_refer': instance.per_refer,
      'friends_amount': instance.friends_amount,
      'app_url': instance.app_url,
      'mail': instance.mail,
      'telegram': instance.telegram,
    };
