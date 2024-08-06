// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Choice _$ChoiceFromJson(Map<String, dynamic> json) {
  return _Choice.fromJson(json);
}

/// @nodoc
mixin _$Choice {
  String? get id => throw _privateConstructorUsedError;
  String? get awnser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceCopyWith<Choice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceCopyWith<$Res> {
  factory $ChoiceCopyWith(Choice value, $Res Function(Choice) then) =
      _$ChoiceCopyWithImpl<$Res, Choice>;
  @useResult
  $Res call({String? id, String? awnser});
}

/// @nodoc
class _$ChoiceCopyWithImpl<$Res, $Val extends Choice>
    implements $ChoiceCopyWith<$Res> {
  _$ChoiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? awnser = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      awnser: freezed == awnser
          ? _value.awnser
          : awnser // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoiceImplCopyWith<$Res> implements $ChoiceCopyWith<$Res> {
  factory _$$ChoiceImplCopyWith(
          _$ChoiceImpl value, $Res Function(_$ChoiceImpl) then) =
      __$$ChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? awnser});
}

/// @nodoc
class __$$ChoiceImplCopyWithImpl<$Res>
    extends _$ChoiceCopyWithImpl<$Res, _$ChoiceImpl>
    implements _$$ChoiceImplCopyWith<$Res> {
  __$$ChoiceImplCopyWithImpl(
      _$ChoiceImpl _value, $Res Function(_$ChoiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? awnser = freezed,
  }) {
    return _then(_$ChoiceImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      awnser: freezed == awnser
          ? _value.awnser
          : awnser // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceImpl implements _Choice {
  _$ChoiceImpl({this.id = "", this.awnser = ""});

  factory _$ChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? awnser;

  @override
  String toString() {
    return 'Choice(id: $id, awnser: $awnser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.awnser, awnser) || other.awnser == awnser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, awnser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceImplCopyWith<_$ChoiceImpl> get copyWith =>
      __$$ChoiceImplCopyWithImpl<_$ChoiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceImplToJson(
      this,
    );
  }
}

abstract class _Choice implements Choice {
  factory _Choice({final String? id, final String? awnser}) = _$ChoiceImpl;

  factory _Choice.fromJson(Map<String, dynamic> json) = _$ChoiceImpl.fromJson;

  @override
  String? get id;
  @override
  String? get awnser;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceImplCopyWith<_$ChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PollData _$PollDataFromJson(Map<String, dynamic> json) {
  return _PollData.fromJson(json);
}

/// @nodoc
mixin _$PollData {
  String? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  List<Choice>? get choice_list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollDataCopyWith<PollData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollDataCopyWith<$Res> {
  factory $PollDataCopyWith(PollData value, $Res Function(PollData) then) =
      _$PollDataCopyWithImpl<$Res, PollData>;
  @useResult
  $Res call({String? id, String? question, List<Choice>? choice_list});
}

/// @nodoc
class _$PollDataCopyWithImpl<$Res, $Val extends PollData>
    implements $PollDataCopyWith<$Res> {
  _$PollDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? choice_list = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      choice_list: freezed == choice_list
          ? _value.choice_list
          : choice_list // ignore: cast_nullable_to_non_nullable
              as List<Choice>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollDataImplCopyWith<$Res>
    implements $PollDataCopyWith<$Res> {
  factory _$$PollDataImplCopyWith(
          _$PollDataImpl value, $Res Function(_$PollDataImpl) then) =
      __$$PollDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? question, List<Choice>? choice_list});
}

/// @nodoc
class __$$PollDataImplCopyWithImpl<$Res>
    extends _$PollDataCopyWithImpl<$Res, _$PollDataImpl>
    implements _$$PollDataImplCopyWith<$Res> {
  __$$PollDataImplCopyWithImpl(
      _$PollDataImpl _value, $Res Function(_$PollDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? choice_list = freezed,
  }) {
    return _then(_$PollDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      choice_list: freezed == choice_list
          ? _value._choice_list
          : choice_list // ignore: cast_nullable_to_non_nullable
              as List<Choice>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollDataImpl implements _PollData {
  _$PollDataImpl(
      {this.id = "",
      this.question = "",
      final List<Choice>? choice_list = const []})
      : _choice_list = choice_list;

  factory _$PollDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollDataImplFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  @JsonKey()
  final String? question;
  final List<Choice>? _choice_list;
  @override
  @JsonKey()
  List<Choice>? get choice_list {
    final value = _choice_list;
    if (value == null) return null;
    if (_choice_list is EqualUnmodifiableListView) return _choice_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PollData(id: $id, question: $question, choice_list: $choice_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality()
                .equals(other._choice_list, _choice_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, question,
      const DeepCollectionEquality().hash(_choice_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PollDataImplCopyWith<_$PollDataImpl> get copyWith =>
      __$$PollDataImplCopyWithImpl<_$PollDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollDataImplToJson(
      this,
    );
  }
}

abstract class _PollData implements PollData {
  factory _PollData(
      {final String? id,
      final String? question,
      final List<Choice>? choice_list}) = _$PollDataImpl;

  factory _PollData.fromJson(Map<String, dynamic> json) =
      _$PollDataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get question;
  @override
  List<Choice>? get choice_list;
  @override
  @JsonKey(ignore: true)
  _$$PollDataImplCopyWith<_$PollDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Poll _$PollFromJson(Map<String, dynamic> json) {
  return _Poll.fromJson(json);
}

/// @nodoc
mixin _$Poll {
  List<PollData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PollCopyWith<Poll> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollCopyWith<$Res> {
  factory $PollCopyWith(Poll value, $Res Function(Poll) then) =
      _$PollCopyWithImpl<$Res, Poll>;
  @useResult
  $Res call({List<PollData>? data});
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
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PollData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollImplCopyWith<$Res> implements $PollCopyWith<$Res> {
  factory _$$PollImplCopyWith(
          _$PollImpl value, $Res Function(_$PollImpl) then) =
      __$$PollImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PollData>? data});
}

/// @nodoc
class __$$PollImplCopyWithImpl<$Res>
    extends _$PollCopyWithImpl<$Res, _$PollImpl>
    implements _$$PollImplCopyWith<$Res> {
  __$$PollImplCopyWithImpl(_$PollImpl _value, $Res Function(_$PollImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PollImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PollData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollImpl implements _Poll {
  _$PollImpl({final List<PollData>? data = const []}) : _data = data;

  factory _$PollImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollImplFromJson(json);

  final List<PollData>? _data;
  @override
  @JsonKey()
  List<PollData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Poll(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PollImplCopyWith<_$PollImpl> get copyWith =>
      __$$PollImplCopyWithImpl<_$PollImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollImplToJson(
      this,
    );
  }
}

abstract class _Poll implements Poll {
  factory _Poll({final List<PollData>? data}) = _$PollImpl;

  factory _Poll.fromJson(Map<String, dynamic> json) = _$PollImpl.fromJson;

  @override
  List<PollData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$PollImplCopyWith<_$PollImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
