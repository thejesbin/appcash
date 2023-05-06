// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'special.freezed.dart';
part 'special.g.dart';

@freezed
class Special with _$Special {
  const factory Special({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "subtitle") required String? subtitle,
    @JsonKey(name: "banner") required String? banner,
    @JsonKey(name: "logo") required String? logo,
    @JsonKey(name: "amount") required String? amount,
    @JsonKey(name: "des1") required String? des1,
    @JsonKey(name: "des2") required String? des2,
    @JsonKey(name: "des3") required String? des3,
    @JsonKey(name: "des4") required String? des4,
    @JsonKey(name: "url") required String? url,
  }) = _Special;

  factory Special.fromJson(Map<String, dynamic> json) =>
      _$SpecialFromJson(json);
}
