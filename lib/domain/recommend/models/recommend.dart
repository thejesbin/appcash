// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'recommend.freezed.dart';
part 'recommend.g.dart';

@freezed
class Recommend with _$Recommend {
  const factory Recommend({
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
  }) = _Recommend;

  factory Recommend.fromJson(Map<String, dynamic> json) =>
      _$RecommendFromJson(json);
}
