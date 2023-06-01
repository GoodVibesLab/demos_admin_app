// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', includeToJson: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'followers_count', includeToJson: false)
  int get followersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'following_count', includeToJson: false)
  int get followingCount => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  dynamic get following => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  dynamic get subscribed => throw _privateConstructorUsedError;
  @JsonKey(name: 'pools_count', includeToJson: false)
  dynamic get poolsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String id,
      String username,
      String? description,
      @JsonKey(name: 'photo_url')
          String? photoUrl,
      String? email,
      @JsonKey(name: 'created_at', includeToJson: false)
          DateTime? createdAt,
      @JsonKey(name: 'followers_count', includeToJson: false)
          int followersCount,
      @JsonKey(name: 'following_count', includeToJson: false)
          int followingCount,
      @JsonKey(includeToJson: false)
          dynamic following,
      @JsonKey(includeToJson: false)
          dynamic subscribed,
      @JsonKey(name: 'pools_count', includeToJson: false)
          dynamic poolsCount});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? following = freezed,
    Object? subscribed = freezed,
    Object? poolsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      following: freezed == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscribed: freezed == subscribed
          ? _value.subscribed
          : subscribed // ignore: cast_nullable_to_non_nullable
              as dynamic,
      poolsCount: freezed == poolsCount
          ? _value.poolsCount
          : poolsCount // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String username,
      String? description,
      @JsonKey(name: 'photo_url')
          String? photoUrl,
      String? email,
      @JsonKey(name: 'created_at', includeToJson: false)
          DateTime? createdAt,
      @JsonKey(name: 'followers_count', includeToJson: false)
          int followersCount,
      @JsonKey(name: 'following_count', includeToJson: false)
          int followingCount,
      @JsonKey(includeToJson: false)
          dynamic following,
      @JsonKey(includeToJson: false)
          dynamic subscribed,
      @JsonKey(name: 'pools_count', includeToJson: false)
          dynamic poolsCount});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? description = freezed,
    Object? photoUrl = freezed,
    Object? email = freezed,
    Object? createdAt = freezed,
    Object? followersCount = null,
    Object? followingCount = null,
    Object? following = freezed,
    Object? subscribed = freezed,
    Object? poolsCount = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      followersCount: null == followersCount
          ? _value.followersCount
          : followersCount // ignore: cast_nullable_to_non_nullable
              as int,
      followingCount: null == followingCount
          ? _value.followingCount
          : followingCount // ignore: cast_nullable_to_non_nullable
              as int,
      following: freezed == following ? _value.following! : following,
      subscribed: freezed == subscribed ? _value.subscribed! : subscribed,
      poolsCount: freezed == poolsCount ? _value.poolsCount! : poolsCount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.username,
      this.description,
      @JsonKey(name: 'photo_url')
          this.photoUrl,
      this.email,
      @JsonKey(name: 'created_at', includeToJson: false)
          this.createdAt,
      @JsonKey(name: 'followers_count', includeToJson: false)
          this.followersCount = 0,
      @JsonKey(name: 'following_count', includeToJson: false)
          this.followingCount = 0,
      @JsonKey(includeToJson: false)
          this.following = false,
      @JsonKey(includeToJson: false)
          this.subscribed = false,
      @JsonKey(name: 'pools_count', includeToJson: false)
          this.poolsCount = 0});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String username;
  @override
  final String? description;
  @override
  @JsonKey(name: 'photo_url')
  final String? photoUrl;
  @override
  final String? email;
  @override
  @JsonKey(name: 'created_at', includeToJson: false)
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'followers_count', includeToJson: false)
  final int followersCount;
  @override
  @JsonKey(name: 'following_count', includeToJson: false)
  final int followingCount;
  @override
  @JsonKey(includeToJson: false)
  final dynamic following;
  @override
  @JsonKey(includeToJson: false)
  final dynamic subscribed;
  @override
  @JsonKey(name: 'pools_count', includeToJson: false)
  final dynamic poolsCount;

  @override
  String toString() {
    return 'User(id: $id, username: $username, description: $description, photoUrl: $photoUrl, email: $email, createdAt: $createdAt, followersCount: $followersCount, followingCount: $followingCount, following: $following, subscribed: $subscribed, poolsCount: $poolsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.followersCount, followersCount) ||
                other.followersCount == followersCount) &&
            (identical(other.followingCount, followingCount) ||
                other.followingCount == followingCount) &&
            const DeepCollectionEquality().equals(other.following, following) &&
            const DeepCollectionEquality()
                .equals(other.subscribed, subscribed) &&
            const DeepCollectionEquality()
                .equals(other.poolsCount, poolsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      username,
      description,
      photoUrl,
      email,
      createdAt,
      followersCount,
      followingCount,
      const DeepCollectionEquality().hash(following),
      const DeepCollectionEquality().hash(subscribed),
      const DeepCollectionEquality().hash(poolsCount));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String id,
      required final String username,
      final String? description,
      @JsonKey(name: 'photo_url')
          final String? photoUrl,
      final String? email,
      @JsonKey(name: 'created_at', includeToJson: false)
          final DateTime? createdAt,
      @JsonKey(name: 'followers_count', includeToJson: false)
          final int followersCount,
      @JsonKey(name: 'following_count', includeToJson: false)
          final int followingCount,
      @JsonKey(includeToJson: false)
          final dynamic following,
      @JsonKey(includeToJson: false)
          final dynamic subscribed,
      @JsonKey(name: 'pools_count', includeToJson: false)
          final dynamic poolsCount}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get username;
  @override
  String? get description;
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @override
  String? get email;
  @override
  @JsonKey(name: 'created_at', includeToJson: false)
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'followers_count', includeToJson: false)
  int get followersCount;
  @override
  @JsonKey(name: 'following_count', includeToJson: false)
  int get followingCount;
  @override
  @JsonKey(includeToJson: false)
  dynamic get following;
  @override
  @JsonKey(includeToJson: false)
  dynamic get subscribed;
  @override
  @JsonKey(name: 'pools_count', includeToJson: false)
  dynamic get poolsCount;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
