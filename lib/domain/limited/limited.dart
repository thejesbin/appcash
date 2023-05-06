// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'limited.freezed.dart';
part 'limited.g.dart';

@freezed
class Limited with _$Limited {
  const factory Limited({
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
  }) = _Limited;

  factory Limited.fromJson(Map<String, dynamic> json) =>
      _$LimitedFromJson(json);
}
