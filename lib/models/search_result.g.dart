// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchResult _$$_SearchResultFromJson(Map<String, dynamic> json) =>
    _$_SearchResult(
      id: json['id'] as String,
      title: json['title'] as String,
      type: $enumDecode(_$ResultTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_SearchResultToJson(_$_SearchResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'type': _$ResultTypeEnumMap[instance.type]!,
    };

const _$ResultTypeEnumMap = {
  ResultType.user: 'user',
  ResultType.poll: 'poll',
  ResultType.tag: 'tag',
};
