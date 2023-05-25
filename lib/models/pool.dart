import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'pool.freezed.dart';
part 'pool.g.dart';

@freezed
class Pool with _$Pool {
  const factory Pool({
    required String id,
    required String question,
    required bool isPrivate,
    required List<String> choices,
    DateTime? endTime,
    required DateTime createdAt,
    required String creatorId,
    @Default(0) int totalVotes,
    @Default(true) bool isActive,
    List<String>? tags,
  }) = _Pool;

  factory Pool.fromJson(Map<String, Object?> json) =>
      _$PoolFromJson(json);
}
