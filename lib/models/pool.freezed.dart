// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pool.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pool _$PoolFromJson(Map<String, dynamic> json) {
  return _Pool.fromJson(json);
}

/// @nodoc
mixin _$Pool {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  bool get isPrivate => throw _privateConstructorUsedError;
  List<String> get choices => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  int get totalVotes => throw _privateConstructorUsedError;
  bool get isActive => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PoolCopyWith<Pool> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PoolCopyWith<$Res> {
  factory $PoolCopyWith(Pool value, $Res Function(Pool) then) =
      _$PoolCopyWithImpl<$Res, Pool>;
  @useResult
  $Res call(
      {String id,
      String question,
      bool isPrivate,
      List<String> choices,
      DateTime? endTime,
      DateTime createdAt,
      String creatorId,
      int totalVotes,
      bool isActive,
      List<String>? tags});
}

/// @nodoc
class _$PoolCopyWithImpl<$Res, $Val extends Pool>
    implements $PoolCopyWith<$Res> {
  _$PoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? isPrivate = null,
    Object? choices = null,
    Object? endTime = freezed,
    Object? createdAt = null,
    Object? creatorId = null,
    Object? totalVotes = null,
    Object? isActive = null,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      choices: null == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PoolCopyWith<$Res> implements $PoolCopyWith<$Res> {
  factory _$$_PoolCopyWith(_$_Pool value, $Res Function(_$_Pool) then) =
      __$$_PoolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      bool isPrivate,
      List<String> choices,
      DateTime? endTime,
      DateTime createdAt,
      String creatorId,
      int totalVotes,
      bool isActive,
      List<String>? tags});
}

/// @nodoc
class __$$_PoolCopyWithImpl<$Res> extends _$PoolCopyWithImpl<$Res, _$_Pool>
    implements _$$_PoolCopyWith<$Res> {
  __$$_PoolCopyWithImpl(_$_Pool _value, $Res Function(_$_Pool) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? question = null,
    Object? isPrivate = null,
    Object? choices = null,
    Object? endTime = freezed,
    Object? createdAt = null,
    Object? creatorId = null,
    Object? totalVotes = null,
    Object? isActive = null,
    Object? tags = freezed,
  }) {
    return _then(_$_Pool(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      choices: null == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<String>,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      totalVotes: null == totalVotes
          ? _value.totalVotes
          : totalVotes // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pool with DiagnosticableTreeMixin implements _Pool {
  const _$_Pool(
      {required this.id,
      required this.question,
      required this.isPrivate,
      required final List<String> choices,
      this.endTime,
      required this.createdAt,
      required this.creatorId,
      this.totalVotes = 0,
      this.isActive = true,
      final List<String>? tags})
      : _choices = choices,
        _tags = tags;

  factory _$_Pool.fromJson(Map<String, dynamic> json) => _$$_PoolFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  final bool isPrivate;
  final List<String> _choices;
  @override
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  final DateTime? endTime;
  @override
  final DateTime createdAt;
  @override
  final String creatorId;
  @override
  @JsonKey()
  final int totalVotes;
  @override
  @JsonKey()
  final bool isActive;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pool(id: $id, question: $question, isPrivate: $isPrivate, choices: $choices, endTime: $endTime, createdAt: $createdAt, creatorId: $creatorId, totalVotes: $totalVotes, isActive: $isActive, tags: $tags)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pool'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('isPrivate', isPrivate))
      ..add(DiagnosticsProperty('choices', choices))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('creatorId', creatorId))
      ..add(DiagnosticsProperty('totalVotes', totalVotes))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('tags', tags));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pool &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.totalVotes, totalVotes) ||
                other.totalVotes == totalVotes) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      question,
      isPrivate,
      const DeepCollectionEquality().hash(_choices),
      endTime,
      createdAt,
      creatorId,
      totalVotes,
      isActive,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PoolCopyWith<_$_Pool> get copyWith =>
      __$$_PoolCopyWithImpl<_$_Pool>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PoolToJson(
      this,
    );
  }
}

abstract class _Pool implements Pool {
  const factory _Pool(
      {required final String id,
      required final String question,
      required final bool isPrivate,
      required final List<String> choices,
      final DateTime? endTime,
      required final DateTime createdAt,
      required final String creatorId,
      final int totalVotes,
      final bool isActive,
      final List<String>? tags}) = _$_Pool;

  factory _Pool.fromJson(Map<String, dynamic> json) = _$_Pool.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  bool get isPrivate;
  @override
  List<String> get choices;
  @override
  DateTime? get endTime;
  @override
  DateTime get createdAt;
  @override
  String get creatorId;
  @override
  int get totalVotes;
  @override
  bool get isActive;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_PoolCopyWith<_$_Pool> get copyWith => throw _privateConstructorUsedError;
}
