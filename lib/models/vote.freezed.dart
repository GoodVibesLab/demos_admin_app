// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vote.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vote _$VoteFromJson(Map<String, dynamic> json) {
  return _Vote.fromJson(json);
}

/// @nodoc
mixin _$Vote {
  String get id => throw _privateConstructorUsedError;
  String get poolId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get option => throw _privateConstructorUsedError;
  DateTime get votedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoteCopyWith<Vote> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoteCopyWith<$Res> {
  factory $VoteCopyWith(Vote value, $Res Function(Vote) then) =
      _$VoteCopyWithImpl<$Res, Vote>;
  @useResult
  $Res call(
      {String id,
      String poolId,
      String userId,
      String option,
      DateTime votedAt});
}

/// @nodoc
class _$VoteCopyWithImpl<$Res, $Val extends Vote>
    implements $VoteCopyWith<$Res> {
  _$VoteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? poolId = null,
    Object? userId = null,
    Object? option = null,
    Object? votedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      votedAt: null == votedAt
          ? _value.votedAt
          : votedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VoteCopyWith<$Res> implements $VoteCopyWith<$Res> {
  factory _$$_VoteCopyWith(_$_Vote value, $Res Function(_$_Vote) then) =
      __$$_VoteCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String poolId,
      String userId,
      String option,
      DateTime votedAt});
}

/// @nodoc
class __$$_VoteCopyWithImpl<$Res> extends _$VoteCopyWithImpl<$Res, _$_Vote>
    implements _$$_VoteCopyWith<$Res> {
  __$$_VoteCopyWithImpl(_$_Vote _value, $Res Function(_$_Vote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? poolId = null,
    Object? userId = null,
    Object? option = null,
    Object? votedAt = null,
  }) {
    return _then(_$_Vote(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      poolId: null == poolId
          ? _value.poolId
          : poolId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String,
      votedAt: null == votedAt
          ? _value.votedAt
          : votedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vote implements _Vote {
  const _$_Vote(
      {required this.id,
      required this.poolId,
      required this.userId,
      required this.option,
      required this.votedAt});

  factory _$_Vote.fromJson(Map<String, dynamic> json) => _$$_VoteFromJson(json);

  @override
  final String id;
  @override
  final String poolId;
  @override
  final String userId;
  @override
  final String option;
  @override
  final DateTime votedAt;

  @override
  String toString() {
    return 'Vote(id: $id, poolId: $poolId, userId: $userId, option: $option, votedAt: $votedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Vote &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.poolId, poolId) || other.poolId == poolId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.option, option) || other.option == option) &&
            (identical(other.votedAt, votedAt) || other.votedAt == votedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, poolId, userId, option, votedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VoteCopyWith<_$_Vote> get copyWith =>
      __$$_VoteCopyWithImpl<_$_Vote>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VoteToJson(
      this,
    );
  }
}

abstract class _Vote implements Vote {
  const factory _Vote(
      {required final String id,
      required final String poolId,
      required final String userId,
      required final String option,
      required final DateTime votedAt}) = _$_Vote;

  factory _Vote.fromJson(Map<String, dynamic> json) = _$_Vote.fromJson;

  @override
  String get id;
  @override
  String get poolId;
  @override
  String get userId;
  @override
  String get option;
  @override
  DateTime get votedAt;
  @override
  @JsonKey(ignore: true)
  _$$_VoteCopyWith<_$_Vote> get copyWith => throw _privateConstructorUsedError;
}
