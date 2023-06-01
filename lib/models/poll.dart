import 'package:demos_app/models/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'poll.freezed.dart';
part 'poll.g.dart';

@freezed
class Poll with _$Poll {
  const factory Poll({
    required String id,
    required String question,
    @JsonKey(name: 'is_private')
    required bool isPrivate,
    required List<String> choices,
    @JsonKey(name: 'end_time')
    DateTime? endTime,
    @JsonKey(name: 'created_at')
    required DateTime createdAt,
    required User creator,
    @JsonKey(name: 'is_active')
    @Default(true) bool isActive,
    List<String>? tags,
    @JsonKey(name: 'votes_counts')
    @Default([]) List<int> votesCounts,
    String? lang,
  }) = _Poll;

  factory Poll.fromJson(Map<String, Object?> json) =>
      _$PollFromJson(json);
}

