// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventStat _$EventStatFromJson(Map<String, dynamic> json) {
  return _EventStat.fromJson(json);
}

/// @nodoc
mixin _$EventStat {
  EventStatData? get my_event_stat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventStatCopyWith<EventStat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStatCopyWith<$Res> {
  factory $EventStatCopyWith(EventStat value, $Res Function(EventStat) then) =
      _$EventStatCopyWithImpl<$Res, EventStat>;
  @useResult
  $Res call({EventStatData? my_event_stat});

  $EventStatDataCopyWith<$Res>? get my_event_stat;
}

/// @nodoc
class _$EventStatCopyWithImpl<$Res, $Val extends EventStat>
    implements $EventStatCopyWith<$Res> {
  _$EventStatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? my_event_stat = freezed,
  }) {
    return _then(_value.copyWith(
      my_event_stat: freezed == my_event_stat
          ? _value.my_event_stat
          : my_event_stat // ignore: cast_nullable_to_non_nullable
              as EventStatData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EventStatDataCopyWith<$Res>? get my_event_stat {
    if (_value.my_event_stat == null) {
      return null;
    }

    return $EventStatDataCopyWith<$Res>(_value.my_event_stat!, (value) {
      return _then(_value.copyWith(my_event_stat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventStatImplCopyWith<$Res>
    implements $EventStatCopyWith<$Res> {
  factory _$$EventStatImplCopyWith(
          _$EventStatImpl value, $Res Function(_$EventStatImpl) then) =
      __$$EventStatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({EventStatData? my_event_stat});

  @override
  $EventStatDataCopyWith<$Res>? get my_event_stat;
}

/// @nodoc
class __$$EventStatImplCopyWithImpl<$Res>
    extends _$EventStatCopyWithImpl<$Res, _$EventStatImpl>
    implements _$$EventStatImplCopyWith<$Res> {
  __$$EventStatImplCopyWithImpl(
      _$EventStatImpl _value, $Res Function(_$EventStatImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? my_event_stat = freezed,
  }) {
    return _then(_$EventStatImpl(
      my_event_stat: freezed == my_event_stat
          ? _value.my_event_stat
          : my_event_stat // ignore: cast_nullable_to_non_nullable
              as EventStatData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventStatImpl implements _EventStat {
  const _$EventStatImpl({this.my_event_stat});

  factory _$EventStatImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventStatImplFromJson(json);

  @override
  final EventStatData? my_event_stat;

  @override
  String toString() {
    return 'EventStat(my_event_stat: $my_event_stat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventStatImpl &&
            (identical(other.my_event_stat, my_event_stat) ||
                other.my_event_stat == my_event_stat));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, my_event_stat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventStatImplCopyWith<_$EventStatImpl> get copyWith =>
      __$$EventStatImplCopyWithImpl<_$EventStatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventStatImplToJson(
      this,
    );
  }
}

abstract class _EventStat implements EventStat {
  const factory _EventStat({final EventStatData? my_event_stat}) =
      _$EventStatImpl;

  factory _EventStat.fromJson(Map<String, dynamic> json) =
      _$EventStatImpl.fromJson;

  @override
  EventStatData? get my_event_stat;
  @override
  @JsonKey(ignore: true)
  _$$EventStatImplCopyWith<_$EventStatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Event _$EventFromJson(Map<String, dynamic> json) {
  return _Event.fromJson(json);
}

/// @nodoc
mixin _$Event {
  List<EventData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res, Event>;
  @useResult
  $Res call({List<EventData> data});
}

/// @nodoc
class _$EventCopyWithImpl<$Res, $Val extends Event>
    implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

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
              as List<EventData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventImplCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$$EventImplCopyWith(
          _$EventImpl value, $Res Function(_$EventImpl) then) =
      __$$EventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventData> data});
}

/// @nodoc
class __$$EventImplCopyWithImpl<$Res>
    extends _$EventCopyWithImpl<$Res, _$EventImpl>
    implements _$$EventImplCopyWith<$Res> {
  __$$EventImplCopyWithImpl(
      _$EventImpl _value, $Res Function(_$EventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$EventImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EventData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventImpl implements _Event {
  const _$EventImpl({final List<EventData> data = const []}) : _data = data;

  factory _$EventImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventImplFromJson(json);

  final List<EventData> _data;
  @override
  @JsonKey()
  List<EventData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'Event(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      __$$EventImplCopyWithImpl<_$EventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventImplToJson(
      this,
    );
  }
}

abstract class _Event implements Event {
  const factory _Event({final List<EventData> data}) = _$EventImpl;

  factory _Event.fromJson(Map<String, dynamic> json) = _$EventImpl.fromJson;

  @override
  List<EventData> get data;
  @override
  @JsonKey(ignore: true)
  _$$EventImplCopyWith<_$EventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PopularEvent _$PopularEventFromJson(Map<String, dynamic> json) {
  return _PopularEvent.fromJson(json);
}

/// @nodoc
mixin _$PopularEvent {
  List<EventList> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularEventCopyWith<PopularEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularEventCopyWith<$Res> {
  factory $PopularEventCopyWith(
          PopularEvent value, $Res Function(PopularEvent) then) =
      _$PopularEventCopyWithImpl<$Res, PopularEvent>;
  @useResult
  $Res call({List<EventList> data});
}

/// @nodoc
class _$PopularEventCopyWithImpl<$Res, $Val extends PopularEvent>
    implements $PopularEventCopyWith<$Res> {
  _$PopularEventCopyWithImpl(this._value, this._then);

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
              as List<EventList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PopularEventImplCopyWith<$Res>
    implements $PopularEventCopyWith<$Res> {
  factory _$$PopularEventImplCopyWith(
          _$PopularEventImpl value, $Res Function(_$PopularEventImpl) then) =
      __$$PopularEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventList> data});
}

/// @nodoc
class __$$PopularEventImplCopyWithImpl<$Res>
    extends _$PopularEventCopyWithImpl<$Res, _$PopularEventImpl>
    implements _$$PopularEventImplCopyWith<$Res> {
  __$$PopularEventImplCopyWithImpl(
      _$PopularEventImpl _value, $Res Function(_$PopularEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PopularEventImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<EventList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PopularEventImpl implements _PopularEvent {
  const _$PopularEventImpl({final List<EventList> data = const []})
      : _data = data;

  factory _$PopularEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$PopularEventImplFromJson(json);

  final List<EventList> _data;
  @override
  @JsonKey()
  List<EventList> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PopularEvent(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PopularEventImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PopularEventImplCopyWith<_$PopularEventImpl> get copyWith =>
      __$$PopularEventImplCopyWithImpl<_$PopularEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PopularEventImplToJson(
      this,
    );
  }
}

abstract class _PopularEvent implements PopularEvent {
  const factory _PopularEvent({final List<EventList> data}) =
      _$PopularEventImpl;

  factory _PopularEvent.fromJson(Map<String, dynamic> json) =
      _$PopularEventImpl.fromJson;

  @override
  List<EventList> get data;
  @override
  @JsonKey(ignore: true)
  _$$PopularEventImplCopyWith<_$PopularEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FavoriteEvent _$FavoriteEventFromJson(Map<String, dynamic> json) {
  return _FavoriteEvent.fromJson(json);
}

/// @nodoc
mixin _$FavoriteEvent {
  FavoriteEventData? get data => throw _privateConstructorUsedError;
  int? get event_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteEventCopyWith<FavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteEventCopyWith<$Res> {
  factory $FavoriteEventCopyWith(
          FavoriteEvent value, $Res Function(FavoriteEvent) then) =
      _$FavoriteEventCopyWithImpl<$Res, FavoriteEvent>;
  @useResult
  $Res call({FavoriteEventData? data, int? event_id});

  $FavoriteEventDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FavoriteEventCopyWithImpl<$Res, $Val extends FavoriteEvent>
    implements $FavoriteEventCopyWith<$Res> {
  _$FavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? event_id = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FavoriteEventData?,
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoriteEventDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FavoriteEventDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FavoriteEventImplCopyWith<$Res>
    implements $FavoriteEventCopyWith<$Res> {
  factory _$$FavoriteEventImplCopyWith(
          _$FavoriteEventImpl value, $Res Function(_$FavoriteEventImpl) then) =
      __$$FavoriteEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FavoriteEventData? data, int? event_id});

  @override
  $FavoriteEventDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FavoriteEventImplCopyWithImpl<$Res>
    extends _$FavoriteEventCopyWithImpl<$Res, _$FavoriteEventImpl>
    implements _$$FavoriteEventImplCopyWith<$Res> {
  __$$FavoriteEventImplCopyWithImpl(
      _$FavoriteEventImpl _value, $Res Function(_$FavoriteEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? event_id = freezed,
  }) {
    return _then(_$FavoriteEventImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FavoriteEventData?,
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FavoriteEventImpl implements _FavoriteEvent {
  const _$FavoriteEventImpl({this.data, this.event_id});

  factory _$FavoriteEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$FavoriteEventImplFromJson(json);

  @override
  final FavoriteEventData? data;
  @override
  final int? event_id;

  @override
  String toString() {
    return 'FavoriteEvent(data: $data, event_id: $event_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteEventImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.event_id, event_id) ||
                other.event_id == event_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, event_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteEventImplCopyWith<_$FavoriteEventImpl> get copyWith =>
      __$$FavoriteEventImplCopyWithImpl<_$FavoriteEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FavoriteEventImplToJson(
      this,
    );
  }
}

abstract class _FavoriteEvent implements FavoriteEvent {
  const factory _FavoriteEvent(
      {final FavoriteEventData? data,
      final int? event_id}) = _$FavoriteEventImpl;

  factory _FavoriteEvent.fromJson(Map<String, dynamic> json) =
      _$FavoriteEventImpl.fromJson;

  @override
  FavoriteEventData? get data;
  @override
  int? get event_id;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteEventImplCopyWith<_$FavoriteEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventFromRegister _$EventFromRegisterFromJson(Map<String, dynamic> json) {
  return _EventFromRegister.fromJson(json);
}

/// @nodoc
mixin _$EventFromRegister {
  List<EventFromRegisterData>? get events => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventFromRegisterCopyWith<EventFromRegister> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFromRegisterCopyWith<$Res> {
  factory $EventFromRegisterCopyWith(
          EventFromRegister value, $Res Function(EventFromRegister) then) =
      _$EventFromRegisterCopyWithImpl<$Res, EventFromRegister>;
  @useResult
  $Res call({List<EventFromRegisterData>? events});
}

/// @nodoc
class _$EventFromRegisterCopyWithImpl<$Res, $Val extends EventFromRegister>
    implements $EventFromRegisterCopyWith<$Res> {
  _$EventFromRegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(_value.copyWith(
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventFromRegisterData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventFromRegisterImplCopyWith<$Res>
    implements $EventFromRegisterCopyWith<$Res> {
  factory _$$EventFromRegisterImplCopyWith(_$EventFromRegisterImpl value,
          $Res Function(_$EventFromRegisterImpl) then) =
      __$$EventFromRegisterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventFromRegisterData>? events});
}

/// @nodoc
class __$$EventFromRegisterImplCopyWithImpl<$Res>
    extends _$EventFromRegisterCopyWithImpl<$Res, _$EventFromRegisterImpl>
    implements _$$EventFromRegisterImplCopyWith<$Res> {
  __$$EventFromRegisterImplCopyWithImpl(_$EventFromRegisterImpl _value,
      $Res Function(_$EventFromRegisterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = freezed,
  }) {
    return _then(_$EventFromRegisterImpl(
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventFromRegisterData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventFromRegisterImpl implements _EventFromRegister {
  const _$EventFromRegisterImpl({final List<EventFromRegisterData>? events})
      : _events = events;

  factory _$EventFromRegisterImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventFromRegisterImplFromJson(json);

  final List<EventFromRegisterData>? _events;
  @override
  List<EventFromRegisterData>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'EventFromRegister(events: $events)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFromRegisterImpl &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFromRegisterImplCopyWith<_$EventFromRegisterImpl> get copyWith =>
      __$$EventFromRegisterImplCopyWithImpl<_$EventFromRegisterImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventFromRegisterImplToJson(
      this,
    );
  }
}

abstract class _EventFromRegister implements EventFromRegister {
  const factory _EventFromRegister(
      {final List<EventFromRegisterData>? events}) = _$EventFromRegisterImpl;

  factory _EventFromRegister.fromJson(Map<String, dynamic> json) =
      _$EventFromRegisterImpl.fromJson;

  @override
  List<EventFromRegisterData>? get events;
  @override
  @JsonKey(ignore: true)
  _$$EventFromRegisterImplCopyWith<_$EventFromRegisterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
