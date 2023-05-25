import 'package:freezed_annotation/freezed_annotation.dart';

part 'vote.freezed.dart';
part 'vote.g.dart';

@freezed
class Vote with _$Vote {
  const factory Vote({
    required String id,
    required String poolId,
    required String userId,
    required String option,
    required DateTime votedAt,
  }) = _Vote;

  factory Vote.fromJson(Map<String, Object?> json) => _$VoteFromJson(json);
}
