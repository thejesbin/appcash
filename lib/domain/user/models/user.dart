// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "email") required String? email,
    @JsonKey(name: "phone") required String? phone,
    @JsonKey(name: "password") required String? password,
    @JsonKey(name: "refer_code") required String? refercode,
    @JsonKey(name: "friends_code") required String? friendscode,
    @JsonKey(name: "amountforfriend") required String? amountforfriend,
    @JsonKey(name: "refercount") required String? refercount,
    @JsonKey(name: "total_refercount") required String? totalrefercount,
    @JsonKey(name: "balance") required String? balance,
    @JsonKey(name: "pending_earnings") required String? pendingearnings,
    @JsonKey(name: "total_rewards") required String? totalrewards,
    @JsonKey(name: "total_redeem") required String? totalredeem,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
