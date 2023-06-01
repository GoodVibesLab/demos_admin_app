// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    String? description,
    @JsonKey(name: 'photo_url')
    String? photoUrl,
    String? email,
    @JsonKey(name: 'created_at', includeToJson: false)
    DateTime? createdAt,
    @JsonKey(name: 'followers_count', includeToJson: false)
    @Default(0) int followersCount,
    @JsonKey(name: 'following_count', includeToJson: false)
    @Default(0) int followingCount,
    @JsonKey(includeToJson: false)
    @Default(false) following,
    @JsonKey(includeToJson: false)
    @Default(false) subscribed,
    @JsonKey(name: 'pools_count', includeToJson: false)
    @Default(0) poolsCount,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
