// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'earning_history.freezed.dart';
part 'earning_history.g.dart';

@freezed
class EarningHistory with _$EarningHistory {
  const factory EarningHistory({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "userid") required String? userid,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "amount") required String? amount,
    @JsonKey(name: "image") required String? image,
  }) = _EarningHistory;

  factory EarningHistory.fromJson(Map<String, dynamic> json) =>
      _$EarningHistoryFromJson(json);
}
