// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'redeem_history.freezed.dart';
part 'redeem_history.g.dart';

@freezed
class RedeemHistory with _$RedeemHistory {
  const factory RedeemHistory({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "userid") required String? userid,
    @JsonKey(name: "method") required String? method,
    @JsonKey(name: "amount") required String? amount,
    @JsonKey(name: "image") required String? image,
    @JsonKey(name: "color") required String? color,
    @JsonKey(name: "status") required String? status,
  }) = _RedeemHistory;

  factory RedeemHistory.fromJson(Map<String, dynamic> json) =>
      _$RedeemHistoryFromJson(json);
}
