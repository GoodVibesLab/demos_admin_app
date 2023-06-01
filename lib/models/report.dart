// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    @JsonKey(includeToJson: false)
    String? id,
    required String description,
    @JsonKey(name: 'created_at', includeToJson: false)
    DateTime? createdAt,
    @JsonKey(name: 'reporter_id')
    required String reporterId,
    @JsonKey(name: 'pool_id')
    required String poolId,
  }) = _Report;

  factory Report.fromJson(Map<String, Object?> json) =>
      _$ReportFromJson(json);
}

enum ReportType {
  inappropriate,
  spam,
  offensive,
  other,
}
