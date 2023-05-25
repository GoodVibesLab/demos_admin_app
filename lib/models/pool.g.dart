// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pool.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pool _$$_PoolFromJson(Map<String, dynamic> json) => _$_Pool(
      id: json['id'] as String,
      question: json['question'] as String,
      isPrivate: json['isPrivate'] as bool,
      choices:
          (json['choices'] as List<dynamic>).map((e) => e as String).toList(),
      endTime: json['endTime'] == null
          ? null
          : DateTime.parse(json['endTime'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      creatorId: json['creatorId'] as String,
      totalVotes: json['totalVotes'] as int? ?? 0,
      isActive: json['isActive'] as bool? ?? true,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PoolToJson(_$_Pool instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'isPrivate': instance.isPrivate,
      'choices': instance.choices,
      'endTime': instance.endTime?.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'creatorId': instance.creatorId,
      'totalVotes': instance.totalVotes,
      'isActive': instance.isActive,
      'tags': instance.tags,
    };
