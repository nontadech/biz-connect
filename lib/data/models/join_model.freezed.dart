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
  $Res call({List<String> room_list, List<SessionData> sessions});
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
  $Res call({List<String> room_list, List<SessionData> sessions});
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinAgendaImpl implements _JoinAgenda {
  const _$JoinAgendaImpl(
      {final List<String> room_list = const [],
      final List<SessionData> sessions = const []})
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
  String toString() {
    return 'JoinAgenda(room_list: $room_list, sessions: $sessions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinAgendaImpl &&
            const DeepCollectionEquality()
                .equals(other._room_list, _room_list) &&
            const DeepCollectionEquality().equals(other._sessions, _sessions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_room_list),
      const DeepCollectionEquality().hash(_sessions));

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
      final List<SessionData> sessions}) = _$JoinAgendaImpl;

  factory _JoinAgenda.fromJson(Map<String, dynamic> json) =
      _$JoinAgendaImpl.fromJson;

  @override
  List<String> get room_list;
  @override
  List<SessionData> get sessions;
  @override
  @JsonKey(ignore: true)
  _$$JoinAgendaImplCopyWith<_$JoinAgendaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
