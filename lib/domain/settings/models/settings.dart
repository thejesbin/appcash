// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "updation") required String? update,
    @JsonKey(name: "maintenance") required String? maintenance,
    @JsonKey(name: "withdraw") required String? withdraw,
    @JsonKey(name: "privacy") required String? privacy,
    @JsonKey(name: "steycode") required String? steycode,
    @JsonKey(name: "update_url") required String? updateUrl,
    @JsonKey(name: "per_refer") required String? per_refer,
    @JsonKey(name: "friends_amount") required String? friends_amount,
    @JsonKey(name: "app_url") required String? app_url,
    @JsonKey(name: "mail") required String? mail,
    @JsonKey(name: "telegram") required String? telegram,
  }) = _Settings;

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
