// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'withdraw_methods.freezed.dart';
part 'withdraw_methods.g.dart';

@freezed
class WithdrawMethods with _$WithdrawMethods {
  const factory WithdrawMethods({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "method") required String? method,
    @JsonKey(name: "image") required String? image,
    @JsonKey(name: "type") required String? type,
    @JsonKey(name: "amount") required String? amount,
  }) = _WithdrawMethods;

  factory WithdrawMethods.fromJson(Map<String, dynamic> json) =>
      _$WithdrawMethodsFromJson(json);
}
