// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinMenu _$JoinMenuFromJson(Map<String, dynamic> json) {
  return _JoinMenu.fromJson(json);
}

/// @nodoc
mixin _$JoinMenu {
  List<JoinMenuData> get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinMenuCopyWith<JoinMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinMenuCopyWith<$Res> {
  factory $JoinMenuCopyWith(JoinMenu value, $Res Function(JoinMenu) then) =
      _$JoinMenuCopyWithImpl<$Res, JoinMenu>;
  @useResult
  $Res call({List<JoinMenuData> settings});
}

/// @nodoc
class _$JoinMenuCopyWithImpl<$Res, $Val extends JoinMenu>
    implements $JoinMenuCopyWith<$Res> {
  _$JoinMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as List<JoinMenuData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinMenuImplCopyWith<$Res>
    implements $JoinMenuCopyWith<$Res> {
  factory _$$JoinMenuImplCopyWith(
          _$JoinMenuImpl value, $Res Function(_$JoinMenuImpl) then) =
      __$$JoinMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JoinMenuData> settings});
}

/// @nodoc
class __$$JoinMenuImplCopyWithImpl<$Res>
    extends _$JoinMenuCopyWithImpl<$Res, _$JoinMenuImpl>
    implements _$$JoinMenuImplCopyWith<$Res> {
  __$$JoinMenuImplCopyWithImpl(
      _$JoinMenuImpl _value, $Res Function(_$JoinMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = null,
  }) {
    return _then(_$JoinMenuImpl(
      settings: null == settings
          ? _value._settings
          : settings // ignore: cast_nullable_to_non_nullable
              as List<JoinMenuData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinMenuImpl implements _JoinMenu {
  const _$JoinMenuImpl({final List<JoinMenuData> settings = const []})
      : _settings = settings;

  factory _$JoinMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinMenuImplFromJson(json);

  final List<JoinMenuData> _settings;
  @override
  @JsonKey()
  List<JoinMenuData> get settings {
    if (_settings is EqualUnmodifiableListView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_settings);
  }

  @override
  String toString() {
    return 'JoinMenu(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinMenuImpl &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_settings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinMenuImplCopyWith<_$JoinMenuImpl> get copyWith =>
      __$$JoinMenuImplCopyWithImpl<_$JoinMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinMenuImplToJson(
      this,
    );
  }
}

abstract class _JoinMenu implements JoinMenu {
  const factory _JoinMenu({final List<JoinMenuData> settings}) = _$JoinMenuImpl;

  factory _JoinMenu.fromJson(Map<String, dynamic> json) =
      _$JoinMenuImpl.fromJson;

  @override
  List<JoinMenuData> get settings;
  @override
  @JsonKey(ignore: true)
  _$$JoinMenuImplCopyWith<_$JoinMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JoinAgenda _$JoinAgendaFromJson(Map<String, dynamic> json) {
  return _JoinAgenda.fromJson(json);
}

/// @nodoc
mixin _$JoinAgenda {
  List<String> get room_list => throw _privateConstructorUsedError;
  List<SessionData> get sessions => throw _privateConstructorUsedError;
  String? get event_start_date => throw _privateConstructorUsedError;
  String? get event_end_date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinAgendaCopyWith<JoinAgenda> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinAgendaCopyWith<$Res> {
  factory $JoinAgendaCopyWith(
          JoinAgenda value, $Res Function(JoinAgenda) then) =
      _$JoinAgendaCopyWithImpl<$Res, JoinAgenda>;
  @useResult
  $Res call(
      {List<String> room_list,
      List<SessionData> sessions,
      String? event_start_date,
      String? event_end_date});
}

/// @nodoc
class _$JoinAgendaCopyWithImpl<$Res, $Val extends JoinAgenda>
    implements $JoinAgendaCopyWith<$Res> {
  _$JoinAgendaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room_list = null,
    Object? sessions = null,
    Object? event_start_date = freezed,
    Object? event_end_date = freezed,
  }) {
    return _then(_value.copyWith(
      room_list: null == room_list
          ? _value.room_list
          : room_list // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sessions: null == sessions
          ? _value.sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionData>,
      event_start_date: freezed == event_start_date
          ? _value.event_start_date
          : event_start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      event_end_date: freezed == event_end_date
          ? _value.event_end_date
          : event_end_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinAgendaImplCopyWith<$Res>
    implements $JoinAgendaCopyWith<$Res> {
  factory _$$JoinAgendaImplCopyWith(
          _$JoinAgendaImpl value, $Res Function(_$JoinAgendaImpl) then) =
      __$$JoinAgendaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> room_list,
      List<SessionData> sessions,
      String? event_start_date,
      String? event_end_date});
}

/// @nodoc
class __$$JoinAgendaImplCopyWithImpl<$Res>
    extends _$JoinAgendaCopyWithImpl<$Res, _$JoinAgendaImpl>
    implements _$$JoinAgendaImplCopyWith<$Res> {
  __$$JoinAgendaImplCopyWithImpl(
      _$JoinAgendaImpl _value, $Res Function(_$JoinAgendaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? room_list = null,
    Object? sessions = null,
    Object? event_start_date = freezed,
    Object? event_end_date = freezed,
  }) {
    return _then(_$JoinAgendaImpl(
      room_list: null == room_list
          ? _value._room_list
          : room_list // ignore: cast_nullable_to_non_nullable
              as List<String>,
      sessions: null == sessions
          ? _value._sessions
          : sessions // ignore: cast_nullable_to_non_nullable
              as List<SessionData>,
      event_start_date: freezed == event_start_date
          ? _value.event_start_date
          : event_start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      event_end_date: freezed == event_end_date
          ? _value.event_end_date
          : event_end_date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinAgendaImpl implements _JoinAgenda {
  const _$JoinAgendaImpl(
      {final List<String> room_list = const [],
      final List<SessionData> sessions = const [],
      this.event_start_date = '',
      this.event_end_date = ''})
      : _room_list = room_list,
        _sessions = sessions;

  factory _$JoinAgendaImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinAgendaImplFromJson(json);

  final List<String> _room_list;
  @override
  @JsonKey()
  List<String> get room_list {
    if (_room_list is EqualUnmodifiableListView) return _room_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_room_list);
  }

  final List<SessionData> _sessions;
  @override
  @JsonKey()
  List<SessionData> get sessions {
    if (_sessions is EqualUnmodifiableListView) return _sessions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sessions);
  }

  @override
  @JsonKey()
  final String? event_start_date;
  @override
  @JsonKey()
  final String? event_end_date;

  @override
  String toString() {
    return 'JoinAgenda(room_list: $room_list, sessions: $sessions, event_start_date: $event_start_date, event_end_date: $event_end_date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinAgendaImpl &&
            const DeepCollectionEquality()
                .equals(other._room_list, _room_list) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions) &&
            (identical(other.event_start_date, event_start_date) ||
                other.event_start_date == event_start_date) &&
            (identical(other.event_end_date, event_end_date) ||
                other.event_end_date == event_end_date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_room_list),
      const DeepCollectionEquality().hash(_sessions),
      event_start_date,
      event_end_date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinAgendaImplCopyWith<_$JoinAgendaImpl> get copyWith =>
      __$$JoinAgendaImplCopyWithImpl<_$JoinAgendaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinAgendaImplToJson(
      this,
    );
  }
}

abstract class _JoinAgenda implements JoinAgenda {
  const factory _JoinAgenda(
      {final List<String> room_list,
      final List<SessionData> sessions,
      final String? event_start_date,
      final String? event_end_date}) = _$JoinAgendaImpl;

  factory _JoinAgenda.fromJson(Map<String, dynamic> json) =
      _$JoinAgendaImpl.fromJson;

  @override
  List<String> get room_list;
  @override
  List<SessionData> get sessions;
  @override
  String? get event_start_date;
  @override
  String? get event_end_date;
  @override
  @JsonKey(ignore: true)
  _$$JoinAgendaImplCopyWith<_$JoinAgendaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionAnswer _$SessionAnswerFromJson(Map<String, dynamic> json) {
  return _SessionAnswer.fromJson(json);
}

/// @nodoc
mixin _$SessionAnswer {
  bool get answer_status => throw _privateConstructorUsedError;
  List<SessionAnswerData> get answer_list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionAnswerCopyWith<SessionAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionAnswerCopyWith<$Res> {
  factory $SessionAnswerCopyWith(
          SessionAnswer value, $Res Function(SessionAnswer) then) =
      _$SessionAnswerCopyWithImpl<$Res, SessionAnswer>;
  @useResult
  $Res call({bool answer_status, List<SessionAnswerData> answer_list});
}

/// @nodoc
class _$SessionAnswerCopyWithImpl<$Res, $Val extends SessionAnswer>
    implements $SessionAnswerCopyWith<$Res> {
  _$SessionAnswerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer_status = null,
    Object? answer_list = null,
  }) {
    return _then(_value.copyWith(
      answer_status: null == answer_status
          ? _value.answer_status
          : answer_status // ignore: cast_nullable_to_non_nullable
              as bool,
      answer_list: null == answer_list
          ? _value.answer_list
          : answer_list // ignore: cast_nullable_to_non_nullable
              as List<SessionAnswerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionAnswerImplCopyWith<$Res>
    implements $SessionAnswerCopyWith<$Res> {
  factory _$$SessionAnswerImplCopyWith(
          _$SessionAnswerImpl value, $Res Function(_$SessionAnswerImpl) then) =
      __$$SessionAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool answer_status, List<SessionAnswerData> answer_list});
}

/// @nodoc
class __$$SessionAnswerImplCopyWithImpl<$Res>
    extends _$SessionAnswerCopyWithImpl<$Res, _$SessionAnswerImpl>
    implements _$$SessionAnswerImplCopyWith<$Res> {
  __$$SessionAnswerImplCopyWithImpl(
      _$SessionAnswerImpl _value, $Res Function(_$SessionAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer_status = null,
    Object? answer_list = null,
  }) {
    return _then(_$SessionAnswerImpl(
      answer_status: null == answer_status
          ? _value.answer_status
          : answer_status // ignore: cast_nullable_to_non_nullable
              as bool,
      answer_list: null == answer_list
          ? _value._answer_list
          : answer_list // ignore: cast_nullable_to_non_nullable
              as List<SessionAnswerData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionAnswerImpl implements _SessionAnswer {
  const _$SessionAnswerImpl(
      {this.answer_status = false,
      final List<SessionAnswerData> answer_list = const []})
      : _answer_list = answer_list;

  factory _$SessionAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionAnswerImplFromJson(json);

  @override
  @JsonKey()
  final bool answer_status;
  final List<SessionAnswerData> _answer_list;
  @override
  @JsonKey()
  List<SessionAnswerData> get answer_list {
    if (_answer_list is EqualUnmodifiableListView) return _answer_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answer_list);
  }

  @override
  String toString() {
    return 'SessionAnswer(answer_status: $answer_status, answer_list: $answer_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionAnswerImpl &&
            (identical(other.answer_status, answer_status) ||
                other.answer_status == answer_status) &&
            const DeepCollectionEquality()
                .equals(other._answer_list, _answer_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answer_status,
      const DeepCollectionEquality().hash(_answer_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionAnswerImplCopyWith<_$SessionAnswerImpl> get copyWith =>
      __$$SessionAnswerImplCopyWithImpl<_$SessionAnswerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionAnswerImplToJson(
      this,
    );
  }
}

abstract class _SessionAnswer implements SessionAnswer {
  const factory _SessionAnswer(
      {final bool answer_status,
      final List<SessionAnswerData> answer_list}) = _$SessionAnswerImpl;

  factory _SessionAnswer.fromJson(Map<String, dynamic> json) =
      _$SessionAnswerImpl.fromJson;

  @override
  bool get answer_status;
  @override
  List<SessionAnswerData> get answer_list;
  @override
  @JsonKey(ignore: true)
  _$$SessionAnswerImplCopyWith<_$SessionAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FloorPlan _$FloorPlanFromJson(Map<String, dynamic> json) {
  return _FloorPlan.fromJson(json);
}

/// @nodoc
mixin _$FloorPlan {
  List<FloorPlanData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorPlanCopyWith<FloorPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorPlanCopyWith<$Res> {
  factory $FloorPlanCopyWith(FloorPlan value, $Res Function(FloorPlan) then) =
      _$FloorPlanCopyWithImpl<$Res, FloorPlan>;
  @useResult
  $Res call({List<FloorPlanData> data});
}

/// @nodoc
class _$FloorPlanCopyWithImpl<$Res, $Val extends FloorPlan>
    implements $FloorPlanCopyWith<$Res> {
  _$FloorPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FloorPlanData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FloorPlanImplCopyWith<$Res>
    implements $FloorPlanCopyWith<$Res> {
  factory _$$FloorPlanImplCopyWith(
          _$FloorPlanImpl value, $Res Function(_$FloorPlanImpl) then) =
      __$$FloorPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FloorPlanData> data});
}

/// @nodoc
class __$$FloorPlanImplCopyWithImpl<$Res>
    extends _$FloorPlanCopyWithImpl<$Res, _$FloorPlanImpl>
    implements _$$FloorPlanImplCopyWith<$Res> {
  __$$FloorPlanImplCopyWithImpl(
      _$FloorPlanImpl _value, $Res Function(_$FloorPlanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FloorPlanImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FloorPlanData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FloorPlanImpl implements _FloorPlan {
  const _$FloorPlanImpl({final List<FloorPlanData> data = const []})
      : _data = data;

  factory _$FloorPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$FloorPlanImplFromJson(json);

  final List<FloorPlanData> _data;
  @override
  @JsonKey()
  List<FloorPlanData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FloorPlan(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloorPlanImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FloorPlanImplCopyWith<_$FloorPlanImpl> get copyWith =>
      __$$FloorPlanImplCopyWithImpl<_$FloorPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FloorPlanImplToJson(
      this,
    );
  }
}

abstract class _FloorPlan implements FloorPlan {
  const factory _FloorPlan({final List<FloorPlanData> data}) = _$FloorPlanImpl;

  factory _FloorPlan.fromJson(Map<String, dynamic> json) =
      _$FloorPlanImpl.fromJson;

  @override
  List<FloorPlanData> get data;
  @override
  @JsonKey(ignore: true)
  _$$FloorPlanImplCopyWith<_$FloorPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Speaker _$SpeakerFromJson(Map<String, dynamic> json) {
  return _Speaker.fromJson(json);
}

/// @nodoc
mixin _$Speaker {
  List<SpeakerData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerCopyWith<Speaker> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerCopyWith<$Res> {
  factory $SpeakerCopyWith(Speaker value, $Res Function(Speaker) then) =
      _$SpeakerCopyWithImpl<$Res, Speaker>;
  @useResult
  $Res call({List<SpeakerData> data});
}

/// @nodoc
class _$SpeakerCopyWithImpl<$Res, $Val extends Speaker>
    implements $SpeakerCopyWith<$Res> {
  _$SpeakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpeakerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakerImplCopyWith<$Res> implements $SpeakerCopyWith<$Res> {
  factory _$$SpeakerImplCopyWith(
          _$SpeakerImpl value, $Res Function(_$SpeakerImpl) then) =
      __$$SpeakerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SpeakerData> data});
}

/// @nodoc
class __$$SpeakerImplCopyWithImpl<$Res>
    extends _$SpeakerCopyWithImpl<$Res, _$SpeakerImpl>
    implements _$$SpeakerImplCopyWith<$Res> {
  __$$SpeakerImplCopyWithImpl(
      _$SpeakerImpl _value, $Res Function(_$SpeakerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SpeakerImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SpeakerData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakerImpl implements _Speaker {
  const _$SpeakerImpl({final List<SpeakerData> data = const []}) : _data = data;

  factory _$SpeakerImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakerImplFromJson(json);

  final List<SpeakerData> _data;
  @override
  @JsonKey()
  List<SpeakerData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Speaker(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakerImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakerImplCopyWith<_$SpeakerImpl> get copyWith =>
      __$$SpeakerImplCopyWithImpl<_$SpeakerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakerImplToJson(
      this,
    );
  }
}

abstract class _Speaker implements Speaker {
  const factory _Speaker({final List<SpeakerData> data}) = _$SpeakerImpl;

  factory _Speaker.fromJson(Map<String, dynamic> json) = _$SpeakerImpl.fromJson;

  @override
  List<SpeakerData> get data;
  @override
  @JsonKey(ignore: true)
  _$$SpeakerImplCopyWith<_$SpeakerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventFile _$EventFileFromJson(Map<String, dynamic> json) {
  return _EventFile.fromJson(json);
}

/// @nodoc
mixin _$EventFile {
  List<EventFileData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventFileCopyWith<EventFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFileCopyWith<$Res> {
  factory $EventFileCopyWith(EventFile value, $Res Function(EventFile) then) =
      _$EventFileCopyWithImpl<$Res, EventFile>;
  @useResult
  $Res call({List<EventFileData> data});
}

/// @nodoc
class _$EventFileCopyWithImpl<$Res, $Val extends EventFile>
    implements $EventFileCopyWith<$Res> {
  _$EventFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EventFileData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventFileImplCopyWith<$Res>
    implements $EventFileCopyWith<$Res> {
  factory _$$EventFileImplCopyWith(
          _$EventFileImpl value, $Res Function(_$EventFileImpl) then) =
      __$$EventFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventFileData> data});
}

/// @nodoc
class __$$EventFileImplCopyWithImpl<$Res>
    extends _$EventFileCopyWithImpl<$Res, _$EventFileImpl>
    implements _$$EventFileImplCopyWith<$Res> {
  __$$EventFileImplCopyWithImpl(
      _$EventFileImpl _value, $Res Function(_$EventFileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EventFileImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EventFileData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventFileImpl implements _EventFile {
  const _$EventFileImpl({final List<EventFileData> data = const []})
      : _data = data;

  factory _$EventFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventFileImplFromJson(json);

  final List<EventFileData> _data;
  @override
  @JsonKey()
  List<EventFileData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EventFile(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFileImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFileImplCopyWith<_$EventFileImpl> get copyWith =>
      __$$EventFileImplCopyWithImpl<_$EventFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventFileImplToJson(
      this,
    );
  }
}

abstract class _EventFile implements EventFile {
  const factory _EventFile({final List<EventFileData> data}) = _$EventFileImpl;

  factory _EventFile.fromJson(Map<String, dynamic> json) =
      _$EventFileImpl.fromJson;

  @override
  List<EventFileData> get data;
  @override
  @JsonKey(ignore: true)
  _$$EventFileImplCopyWith<_$EventFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Partners _$PartnersFromJson(Map<String, dynamic> json) {
  return _Partners.fromJson(json);
}

/// @nodoc
mixin _$Partners {
  PartnersData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnersCopyWith<Partners> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnersCopyWith<$Res> {
  factory $PartnersCopyWith(Partners value, $Res Function(Partners) then) =
      _$PartnersCopyWithImpl<$Res, Partners>;
  @useResult
  $Res call({PartnersData? data});

  $PartnersDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PartnersCopyWithImpl<$Res, $Val extends Partners>
    implements $PartnersCopyWith<$Res> {
  _$PartnersCopyWithImpl(this._value, this._then);

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
              as PartnersData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnersDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PartnersDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartnersImplCopyWith<$Res>
    implements $PartnersCopyWith<$Res> {
  factory _$$PartnersImplCopyWith(
          _$PartnersImpl value, $Res Function(_$PartnersImpl) then) =
      __$$PartnersImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PartnersData? data});

  @override
  $PartnersDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PartnersImplCopyWithImpl<$Res>
    extends _$PartnersCopyWithImpl<$Res, _$PartnersImpl>
    implements _$$PartnersImplCopyWith<$Res> {
  __$$PartnersImplCopyWithImpl(
      _$PartnersImpl _value, $Res Function(_$PartnersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PartnersImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PartnersData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnersImpl implements _Partners {
  const _$PartnersImpl({this.data});

  factory _$PartnersImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnersImplFromJson(json);

  @override
  final PartnersData? data;

  @override
  String toString() {
    return 'Partners(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnersImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnersImplCopyWith<_$PartnersImpl> get copyWith =>
      __$$PartnersImplCopyWithImpl<_$PartnersImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnersImplToJson(
      this,
    );
  }
}

abstract class _Partners implements Partners {
  const factory _Partners({final PartnersData? data}) = _$PartnersImpl;

  factory _Partners.fromJson(Map<String, dynamic> json) =
      _$PartnersImpl.fromJson;

  @override
  PartnersData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PartnersImplCopyWith<_$PartnersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnersData _$PartnersDataFromJson(Map<String, dynamic> json) {
  return _PartnersData.fromJson(json);
}

/// @nodoc
mixin _$PartnersData {
  PartnersList? get group_left => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnersDataCopyWith<PartnersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnersDataCopyWith<$Res> {
  factory $PartnersDataCopyWith(
          PartnersData value, $Res Function(PartnersData) then) =
      _$PartnersDataCopyWithImpl<$Res, PartnersData>;
  @useResult
  $Res call({PartnersList? group_left});

  $PartnersListCopyWith<$Res>? get group_left;
}

/// @nodoc
class _$PartnersDataCopyWithImpl<$Res, $Val extends PartnersData>
    implements $PartnersDataCopyWith<$Res> {
  _$PartnersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_left = freezed,
  }) {
    return _then(_value.copyWith(
      group_left: freezed == group_left
          ? _value.group_left
          : group_left // ignore: cast_nullable_to_non_nullable
              as PartnersList?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartnersListCopyWith<$Res>? get group_left {
    if (_value.group_left == null) {
      return null;
    }

    return $PartnersListCopyWith<$Res>(_value.group_left!, (value) {
      return _then(_value.copyWith(group_left: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PartnersDataImplCopyWith<$Res>
    implements $PartnersDataCopyWith<$Res> {
  factory _$$PartnersDataImplCopyWith(
          _$PartnersDataImpl value, $Res Function(_$PartnersDataImpl) then) =
      __$$PartnersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PartnersList? group_left});

  @override
  $PartnersListCopyWith<$Res>? get group_left;
}

/// @nodoc
class __$$PartnersDataImplCopyWithImpl<$Res>
    extends _$PartnersDataCopyWithImpl<$Res, _$PartnersDataImpl>
    implements _$$PartnersDataImplCopyWith<$Res> {
  __$$PartnersDataImplCopyWithImpl(
      _$PartnersDataImpl _value, $Res Function(_$PartnersDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? group_left = freezed,
  }) {
    return _then(_$PartnersDataImpl(
      group_left: freezed == group_left
          ? _value.group_left
          : group_left // ignore: cast_nullable_to_non_nullable
              as PartnersList?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnersDataImpl implements _PartnersData {
  const _$PartnersDataImpl({this.group_left});

  factory _$PartnersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnersDataImplFromJson(json);

  @override
  final PartnersList? group_left;

  @override
  String toString() {
    return 'PartnersData(group_left: $group_left)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnersDataImpl &&
            (identical(other.group_left, group_left) ||
                other.group_left == group_left));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, group_left);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnersDataImplCopyWith<_$PartnersDataImpl> get copyWith =>
      __$$PartnersDataImplCopyWithImpl<_$PartnersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnersDataImplToJson(
      this,
    );
  }
}

abstract class _PartnersData implements PartnersData {
  const factory _PartnersData({final PartnersList? group_left}) =
      _$PartnersDataImpl;

  factory _PartnersData.fromJson(Map<String, dynamic> json) =
      _$PartnersDataImpl.fromJson;

  @override
  PartnersList? get group_left;
  @override
  @JsonKey(ignore: true)
  _$$PartnersDataImplCopyWith<_$PartnersDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Gallery _$GalleryFromJson(Map<String, dynamic> json) {
  return _Gallery.fromJson(json);
}

/// @nodoc
mixin _$Gallery {
  List<GalleryData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryCopyWith<Gallery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryCopyWith<$Res> {
  factory $GalleryCopyWith(Gallery value, $Res Function(Gallery) then) =
      _$GalleryCopyWithImpl<$Res, Gallery>;
  @useResult
  $Res call({List<GalleryData>? data});
}

/// @nodoc
class _$GalleryCopyWithImpl<$Res, $Val extends Gallery>
    implements $GalleryCopyWith<$Res> {
  _$GalleryCopyWithImpl(this._value, this._then);

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
              as List<GalleryData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryImplCopyWith<$Res> implements $GalleryCopyWith<$Res> {
  factory _$$GalleryImplCopyWith(
          _$GalleryImpl value, $Res Function(_$GalleryImpl) then) =
      __$$GalleryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GalleryData>? data});
}

/// @nodoc
class __$$GalleryImplCopyWithImpl<$Res>
    extends _$GalleryCopyWithImpl<$Res, _$GalleryImpl>
    implements _$$GalleryImplCopyWith<$Res> {
  __$$GalleryImplCopyWithImpl(
      _$GalleryImpl _value, $Res Function(_$GalleryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GalleryImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<GalleryData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryImpl implements _Gallery {
  const _$GalleryImpl({final List<GalleryData>? data = const []})
      : _data = data;

  factory _$GalleryImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryImplFromJson(json);

  final List<GalleryData>? _data;
  @override
  @JsonKey()
  List<GalleryData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Gallery(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryImplCopyWith<_$GalleryImpl> get copyWith =>
      __$$GalleryImplCopyWithImpl<_$GalleryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryImplToJson(
      this,
    );
  }
}

abstract class _Gallery implements Gallery {
  const factory _Gallery({final List<GalleryData>? data}) = _$GalleryImpl;

  factory _Gallery.fromJson(Map<String, dynamic> json) = _$GalleryImpl.fromJson;

  @override
  List<GalleryData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$GalleryImplCopyWith<_$GalleryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
