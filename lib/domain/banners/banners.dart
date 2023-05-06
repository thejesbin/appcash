// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'banners.freezed.dart';
part 'banners.g.dart';

@freezed
class Banners with _$Banners {
  const factory Banners({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "image") required String? image,
    @JsonKey(name: "url") required String? url,
  }) = _Banners;

  factory Banners.fromJson(Map<String, dynamic> json) =>
      _$BannersFromJson(json);
}
