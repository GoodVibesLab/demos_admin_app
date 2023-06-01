// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'vote.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vote _$$_VoteFromJson(Map<String, dynamic> json) => _$_Vote(
      id: json['id'] as String,
      poolId: json['poolId'] as String,
      userId: json['userId'] as String,
      option: json['option'] as String,
      votedAt: DateTime.parse(json['votedAt'] as String),
    );

Map<String, dynamic> _$$_VoteToJson(_$_Vote instance) => <String, dynamic>{
      'id': instance.id,
      'poolId': instance.poolId,
      'userId': instance.userId,
      'option': instance.option,
      'votedAt': instance.votedAt.toIso8601String(),
    };
