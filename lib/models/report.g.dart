// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      id: json['id'] as String?,
      description: json['description'] as String,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      reporterId: json['reporter_id'] as String,
      poolId: json['pool_id'] as String,
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'description': instance.description,
      'reporter_id': instance.reporterId,
      'pool_id': instance.poolId,
    };
