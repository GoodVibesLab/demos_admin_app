// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      username: json['username'] as String,
      description: json['description'] as String?,
      photoUrl: json['photo_url'] as String?,
      email: json['email'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      followersCount: json['followers_count'] as int? ?? 0,
      followingCount: json['following_count'] as int? ?? 0,
      following: json['following'] ?? false,
      subscribed: json['subscribed'] ?? false,
      poolsCount: json['pools_count'] ?? 0,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'description': instance.description,
      'photo_url': instance.photoUrl,
      'email': instance.email,
      'created_at': instance.createdAt?.toIso8601String(),
      'followers_count': instance.followersCount,
      'following_count': instance.followingCount,
      'following': instance.following,
      'subscribed': instance.subscribed,
      'pools_count': instance.poolsCount,
    };
