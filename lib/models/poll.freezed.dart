// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Poll _$PollFromJson(Map<String, dynamic> json) {
  return _Poll.fromJson(json);
}

/// @nodoc
mixin _$Poll {
  String get id => throw _privateConstructorUsedError;
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_private')
  bool get isPrivate => throw _privateConstructorUsedError;
  List<String> get choices => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  DateTime? get endTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  User get creator => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool get isActive => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'votes_counts')
  List<int> get votesCounts => throw _privateConstructorUsedError;
  String? get lang => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res, Poll>;
  @useResult
  $Res call(
      {String id,
      String question,
      @JsonKey(name: 'is_private') bool isPrivate,
      List<String> choices,
      @JsonKey(name: 'end_time') DateTime? endTime,
      @JsonKey(name: 'created_at') DateTime createdAt,
      User creator,
      @JsonKey(name: 'is_active') bool isActive,
      List<String>? tags,
      @JsonKey(name: 'votes_counts') List<int> votesCounts,
      String? lang});

  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class _$PollCopyWithImpl<$Res, $Val extends Poll>
    implements $PollCopyWith<$Res> {
  _$PollCopyWithImpl(this._value, this._then);

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
    Object? creator = null,
    Object? isActive = null,
    Object? tags = freezed,
    Object? votesCounts = null,
    Object? lang = freezed,
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
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      votesCounts: null == votesCounts
          ? _value.votesCounts
          : votesCounts // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get creator {
    return $UserCopyWith<$Res>(_value.creator, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PollCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$$_PollCopyWith(_$_Poll value, $Res Function(_$_Poll) then) =
      __$$_PollCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String question,
      @JsonKey(name: 'is_private') bool isPrivate,
      List<String> choices,
      @JsonKey(name: 'end_time') DateTime? endTime,
      @JsonKey(name: 'created_at') DateTime createdAt,
      User creator,
      @JsonKey(name: 'is_active') bool isActive,
      List<String>? tags,
      @JsonKey(name: 'votes_counts') List<int> votesCounts,
      String? lang});

  @override
  $UserCopyWith<$Res> get creator;
}

/// @nodoc
class __$$_PollCopyWithImpl<$Res> extends _$PollCopyWithImpl<$Res, _$_Poll>
    implements _$$_PollCopyWith<$Res> {
  __$$_PollCopyWithImpl(_$_Poll _value, $Res Function(_$_Poll) _then)
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
    Object? creator = null,
    Object? isActive = null,
    Object? tags = freezed,
    Object? votesCounts = null,
    Object? lang = freezed,
  }) {
    return _then(_$_Poll(
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
      creator: null == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as User,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      votesCounts: null == votesCounts
          ? _value._votesCounts
          : votesCounts // ignore: cast_nullable_to_non_nullable
              as List<int>,
      lang: freezed == lang
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Poll with DiagnosticableTreeMixin implements _Poll {
  const _$_Poll(
      {required this.id,
      required this.question,
      @JsonKey(name: 'is_private') required this.isPrivate,
      required final List<String> choices,
      @JsonKey(name: 'end_time') this.endTime,
      @JsonKey(name: 'created_at') required this.createdAt,
      required this.creator,
      @JsonKey(name: 'is_active') this.isActive = true,
      final List<String>? tags,
      @JsonKey(name: 'votes_counts') final List<int> votesCounts = const [],
      this.lang})
      : _choices = choices,
        _tags = tags,
        _votesCounts = votesCounts;

  factory _$_Poll.fromJson(Map<String, dynamic> json) => _$$_PollFromJson(json);

  @override
  final String id;
  @override
  final String question;
  @override
  @JsonKey(name: 'is_private')
  final bool isPrivate;
  final List<String> _choices;
  @override
  List<String> get choices {
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choices);
  }

  @override
  @JsonKey(name: 'end_time')
  final DateTime? endTime;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  final User creator;
  @override
  @JsonKey(name: 'is_active')
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

  final List<int> _votesCounts;
  @override
  @JsonKey(name: 'votes_counts')
  List<int> get votesCounts {
    if (_votesCounts is EqualUnmodifiableListView) return _votesCounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votesCounts);
  }

  @override
  final String? lang;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Poll(id: $id, question: $question, isPrivate: $isPrivate, choices: $choices, endTime: $endTime, createdAt: $createdAt, creator: $creator, isActive: $isActive, tags: $tags, votesCounts: $votesCounts, lang: $lang)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Poll'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('isPrivate', isPrivate))
      ..add(DiagnosticsProperty('choices', choices))
      ..add(DiagnosticsProperty('endTime', endTime))
      ..add(DiagnosticsProperty('createdAt', createdAt))
      ..add(DiagnosticsProperty('creator', creator))
      ..add(DiagnosticsProperty('isActive', isActive))
      ..add(DiagnosticsProperty('tags', tags))
      ..add(DiagnosticsProperty('votesCounts', votesCounts))
      ..add(DiagnosticsProperty('lang', lang));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Poll &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            const DeepCollectionEquality().equals(other._choices, _choices) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._votesCounts, _votesCounts) &&
            (identical(other.lang, lang) || other.lang == lang));
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
      creator,
      isActive,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_votesCounts),
      lang);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PollCopyWith<_$_Poll> get copyWith =>
      __$$_PollCopyWithImpl<_$_Poll>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PollToJson(
      this,
    );
  }
}

abstract class _Poll implements Poll {
  const factory _Poll(
      {required final String id,
      required final String question,
      @JsonKey(name: 'is_private') required final bool isPrivate,
      required final List<String> choices,
      @JsonKey(name: 'end_time') final DateTime? endTime,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      required final User creator,
      @JsonKey(name: 'is_active') final bool isActive,
      final List<String>? tags,
      @JsonKey(name: 'votes_counts') final List<int> votesCounts,
      final String? lang}) = _$_Poll;

  factory _Poll.fromJson(Map<String, dynamic> json) = _$_Poll.fromJson;

  @override
  String get id;
  @override
  String get question;
  @override
  @JsonKey(name: 'is_private')
  bool get isPrivate;
  @override
  List<String> get choices;
  @override
  @JsonKey(name: 'end_time')
  DateTime? get endTime;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  User get creator;
  @override
  @JsonKey(name: 'is_active')
  bool get isActive;
  @override
  List<String>? get tags;
  @override
  @JsonKey(name: 'votes_counts')
  List<int> get votesCounts;
  @override
  String? get lang;
  @override
  @JsonKey(ignore: true)
  _$$_PollCopyWith<_$_Poll> get copyWith => throw _privateConstructorUsedError;
}
