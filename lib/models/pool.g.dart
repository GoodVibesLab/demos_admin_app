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
    );

Map<String, dynamic> _$$_PoolToJson(_$_Pool instance) => <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'isPrivate': instance.isPrivate,
      'choices': instance.choices,
    };
