// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Poll _$$_PollFromJson(Map<String, dynamic> json) => _$_Poll(
      id: json['id'] as String,
      question: json['question'] as String,
      isPrivate: json['is_private'] as bool,
      choices:
          (json['choices'] as List<dynamic>).map((e) => e as String).toList(),
      endTime: json['end_time'] == null
          ? null
          : DateTime.parse(json['end_time'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      creator: User.fromJson(json['creator'] as Map<String, dynamic>),
      isActive: json['is_active'] as bool? ?? true,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      votesCounts: (json['votes_counts'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$$_PollToJson(_$_Poll instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'is_private': instance.isPrivate,
      'choices': instance.choices,
      'end_time': instance.endTime?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'creator': instance.creator,
      'is_active': instance.isActive,
      'tags': instance.tags,
      'votes_counts': instance.votesCounts,
      'lang': instance.lang,
    };
