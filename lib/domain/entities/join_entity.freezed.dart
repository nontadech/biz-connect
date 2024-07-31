// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JoinMenuData _$JoinMenuDataFromJson(Map<String, dynamic> json) {
  return _JoinMenuData.fromJson(json);
}

/// @nodoc
mixin _$JoinMenuData {
  String? get menu_name => throw _privateConstructorUsedError;
  String? get menu_status => throw _privateConstructorUsedError;
  String? get badge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JoinMenuDataCopyWith<JoinMenuData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinMenuDataCopyWith<$Res> {
  factory $JoinMenuDataCopyWith(
          JoinMenuData value, $Res Function(JoinMenuData) then) =
      _$JoinMenuDataCopyWithImpl<$Res, JoinMenuData>;
  @useResult
  $Res call({String? menu_name, String? menu_status, String? badge});
}

/// @nodoc
class _$JoinMenuDataCopyWithImpl<$Res, $Val extends JoinMenuData>
    implements $JoinMenuDataCopyWith<$Res> {
  _$JoinMenuDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu_name = freezed,
    Object? menu_status = freezed,
    Object? badge = freezed,
  }) {
    return _then(_value.copyWith(
      menu_name: freezed == menu_name
          ? _value.menu_name
          : menu_name // ignore: cast_nullable_to_non_nullable
              as String?,
      menu_status: freezed == menu_status
          ? _value.menu_status
          : menu_status // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JoinMenuDataImplCopyWith<$Res>
    implements $JoinMenuDataCopyWith<$Res> {
  factory _$$JoinMenuDataImplCopyWith(
          _$JoinMenuDataImpl value, $Res Function(_$JoinMenuDataImpl) then) =
      __$$JoinMenuDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? menu_name, String? menu_status, String? badge});
}

/// @nodoc
class __$$JoinMenuDataImplCopyWithImpl<$Res>
    extends _$JoinMenuDataCopyWithImpl<$Res, _$JoinMenuDataImpl>
    implements _$$JoinMenuDataImplCopyWith<$Res> {
  __$$JoinMenuDataImplCopyWithImpl(
      _$JoinMenuDataImpl _value, $Res Function(_$JoinMenuDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu_name = freezed,
    Object? menu_status = freezed,
    Object? badge = freezed,
  }) {
    return _then(_$JoinMenuDataImpl(
      menu_name: freezed == menu_name
          ? _value.menu_name
          : menu_name // ignore: cast_nullable_to_non_nullable
              as String?,
      menu_status: freezed == menu_status
          ? _value.menu_status
          : menu_status // ignore: cast_nullable_to_non_nullable
              as String?,
      badge: freezed == badge
          ? _value.badge
          : badge // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JoinMenuDataImpl implements _JoinMenuData {
  const _$JoinMenuDataImpl(
      {this.menu_name = '', this.menu_status = '', this.badge = ''});

  factory _$JoinMenuDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JoinMenuDataImplFromJson(json);

  @override
  @JsonKey()
  final String? menu_name;
  @override
  @JsonKey()
  final String? menu_status;
  @override
  @JsonKey()
  final String? badge;

  @override
  String toString() {
    return 'JoinMenuData(menu_name: $menu_name, menu_status: $menu_status, badge: $badge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinMenuDataImpl &&
            (identical(other.menu_name, menu_name) ||
                other.menu_name == menu_name) &&
            (identical(other.menu_status, menu_status) ||
                other.menu_status == menu_status) &&
            (identical(other.badge, badge) || other.badge == badge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, menu_name, menu_status, badge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinMenuDataImplCopyWith<_$JoinMenuDataImpl> get copyWith =>
      __$$JoinMenuDataImplCopyWithImpl<_$JoinMenuDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JoinMenuDataImplToJson(
      this,
    );
  }
}

abstract class _JoinMenuData implements JoinMenuData {
  const factory _JoinMenuData(
      {final String? menu_name,
      final String? menu_status,
      final String? badge}) = _$JoinMenuDataImpl;

  factory _JoinMenuData.fromJson(Map<String, dynamic> json) =
      _$JoinMenuDataImpl.fromJson;

  @override
  String? get menu_name;
  @override
  String? get menu_status;
  @override
  String? get badge;
  @override
  @JsonKey(ignore: true)
  _$$JoinMenuDataImplCopyWith<_$JoinMenuDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeakerData _$SpeakerDataFromJson(Map<String, dynamic> json) {
  return _SpeakerData.fromJson(json);
}

/// @nodoc
mixin _$SpeakerData {
  int? get speaker_id => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  List<dynamic>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakerDataCopyWith<SpeakerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakerDataCopyWith<$Res> {
  factory $SpeakerDataCopyWith(
          SpeakerData value, $Res Function(SpeakerData) then) =
      _$SpeakerDataCopyWithImpl<$Res, SpeakerData>;
  @useResult
  $Res call(
      {int? speaker_id,
      String? fullname,
      String? position,
      String? company,
      String? description,
      String? image_url,
      List<dynamic>? files});
}

/// @nodoc
class _$SpeakerDataCopyWithImpl<$Res, $Val extends SpeakerData>
    implements $SpeakerDataCopyWith<$Res> {
  _$SpeakerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speaker_id = freezed,
    Object? fullname = freezed,
    Object? position = freezed,
    Object? company = freezed,
    Object? description = freezed,
    Object? image_url = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      speaker_id: freezed == speaker_id
          ? _value.speaker_id
          : speaker_id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakerDataImplCopyWith<$Res>
    implements $SpeakerDataCopyWith<$Res> {
  factory _$$SpeakerDataImplCopyWith(
          _$SpeakerDataImpl value, $Res Function(_$SpeakerDataImpl) then) =
      __$$SpeakerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? speaker_id,
      String? fullname,
      String? position,
      String? company,
      String? description,
      String? image_url,
      List<dynamic>? files});
}

/// @nodoc
class __$$SpeakerDataImplCopyWithImpl<$Res>
    extends _$SpeakerDataCopyWithImpl<$Res, _$SpeakerDataImpl>
    implements _$$SpeakerDataImplCopyWith<$Res> {
  __$$SpeakerDataImplCopyWithImpl(
      _$SpeakerDataImpl _value, $Res Function(_$SpeakerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speaker_id = freezed,
    Object? fullname = freezed,
    Object? position = freezed,
    Object? company = freezed,
    Object? description = freezed,
    Object? image_url = freezed,
    Object? files = freezed,
  }) {
    return _then(_$SpeakerDataImpl(
      speaker_id: freezed == speaker_id
          ? _value.speaker_id
          : speaker_id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakerDataImpl implements _SpeakerData {
  const _$SpeakerDataImpl(
      {this.speaker_id,
      this.fullname = '',
      this.position = '',
      this.company = '',
      this.description = '',
      this.image_url = '',
      final List<dynamic>? files = const []})
      : _files = files;

  factory _$SpeakerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakerDataImplFromJson(json);

  @override
  final int? speaker_id;
  @override
  @JsonKey()
  final String? fullname;
  @override
  @JsonKey()
  final String? position;
  @override
  @JsonKey()
  final String? company;
  @override
  @JsonKey()
  final String? description;
  @override
  @JsonKey()
  final String? image_url;
  final List<dynamic>? _files;
  @override
  @JsonKey()
  List<dynamic>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpeakerData(speaker_id: $speaker_id, fullname: $fullname, position: $position, company: $company, description: $description, image_url: $image_url, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakerDataImpl &&
            (identical(other.speaker_id, speaker_id) ||
                other.speaker_id == speaker_id) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      speaker_id,
      fullname,
      position,
      company,
      description,
      image_url,
      const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpeakerDataImplCopyWith<_$SpeakerDataImpl> get copyWith =>
      __$$SpeakerDataImplCopyWithImpl<_$SpeakerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakerDataImplToJson(
      this,
    );
  }
}

abstract class _SpeakerData implements SpeakerData {
  const factory _SpeakerData(
      {final int? speaker_id,
      final String? fullname,
      final String? position,
      final String? company,
      final String? description,
      final String? image_url,
      final List<dynamic>? files}) = _$SpeakerDataImpl;

  factory _SpeakerData.fromJson(Map<String, dynamic> json) =
      _$SpeakerDataImpl.fromJson;

  @override
  int? get speaker_id;
  @override
  String? get fullname;
  @override
  String? get position;
  @override
  String? get company;
  @override
  String? get description;
  @override
  String? get image_url;
  @override
  List<dynamic>? get files;
  @override
  @JsonKey(ignore: true)
  _$$SpeakerDataImplCopyWith<_$SpeakerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionList _$SessionListFromJson(Map<String, dynamic> json) {
  return _SessionList.fromJson(json);
}

/// @nodoc
mixin _$SessionList {
  int? get id => throw _privateConstructorUsedError;
  String? get start_time => throw _privateConstructorUsedError;
  String? get end_time => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  List<SpeakerData>? get speakers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionListCopyWith<SessionList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionListCopyWith<$Res> {
  factory $SessionListCopyWith(
          SessionList value, $Res Function(SessionList) then) =
      _$SessionListCopyWithImpl<$Res, SessionList>;
  @useResult
  $Res call(
      {int? id,
      String? start_time,
      String? end_time,
      String? date,
      String? location,
      String? title,
      String? detail,
      List<SpeakerData>? speakers});
}

/// @nodoc
class _$SessionListCopyWithImpl<$Res, $Val extends SessionList>
    implements $SessionListCopyWith<$Res> {
  _$SessionListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? date = freezed,
    Object? location = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? speakers = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      speakers: freezed == speakers
          ? _value.speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<SpeakerData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionListImplCopyWith<$Res>
    implements $SessionListCopyWith<$Res> {
  factory _$$SessionListImplCopyWith(
          _$SessionListImpl value, $Res Function(_$SessionListImpl) then) =
      __$$SessionListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? start_time,
      String? end_time,
      String? date,
      String? location,
      String? title,
      String? detail,
      List<SpeakerData>? speakers});
}

/// @nodoc
class __$$SessionListImplCopyWithImpl<$Res>
    extends _$SessionListCopyWithImpl<$Res, _$SessionListImpl>
    implements _$$SessionListImplCopyWith<$Res> {
  __$$SessionListImplCopyWithImpl(
      _$SessionListImpl _value, $Res Function(_$SessionListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? start_time = freezed,
    Object? end_time = freezed,
    Object? date = freezed,
    Object? location = freezed,
    Object? title = freezed,
    Object? detail = freezed,
    Object? speakers = freezed,
  }) {
    return _then(_$SessionListImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      start_time: freezed == start_time
          ? _value.start_time
          : start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      end_time: freezed == end_time
          ? _value.end_time
          : end_time // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      speakers: freezed == speakers
          ? _value._speakers
          : speakers // ignore: cast_nullable_to_non_nullable
              as List<SpeakerData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionListImpl implements _SessionList {
  const _$SessionListImpl(
      {this.id,
      this.start_time = '',
      this.end_time = '',
      this.date = '',
      this.location = '',
      this.title = '',
      this.detail = '',
      final List<SpeakerData>? speakers = const []})
      : _speakers = speakers;

  factory _$SessionListImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionListImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? start_time;
  @override
  @JsonKey()
  final String? end_time;
  @override
  @JsonKey()
  final String? date;
  @override
  @JsonKey()
  final String? location;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? detail;
  final List<SpeakerData>? _speakers;
  @override
  @JsonKey()
  List<SpeakerData>? get speakers {
    final value = _speakers;
    if (value == null) return null;
    if (_speakers is EqualUnmodifiableListView) return _speakers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SessionList(id: $id, start_time: $start_time, end_time: $end_time, date: $date, location: $location, title: $title, detail: $detail, speakers: $speakers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionListImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.start_time, start_time) ||
                other.start_time == start_time) &&
            (identical(other.end_time, end_time) ||
                other.end_time == end_time) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._speakers, _speakers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, start_time, end_time, date,
      location, title, detail, const DeepCollectionEquality().hash(_speakers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionListImplCopyWith<_$SessionListImpl> get copyWith =>
      __$$SessionListImplCopyWithImpl<_$SessionListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionListImplToJson(
      this,
    );
  }
}

abstract class _SessionList implements SessionList {
  const factory _SessionList(
      {final int? id,
      final String? start_time,
      final String? end_time,
      final String? date,
      final String? location,
      final String? title,
      final String? detail,
      final List<SpeakerData>? speakers}) = _$SessionListImpl;

  factory _SessionList.fromJson(Map<String, dynamic> json) =
      _$SessionListImpl.fromJson;

  @override
  int? get id;
  @override
  String? get start_time;
  @override
  String? get end_time;
  @override
  String? get date;
  @override
  String? get location;
  @override
  String? get title;
  @override
  String? get detail;
  @override
  List<SpeakerData>? get speakers;
  @override
  @JsonKey(ignore: true)
  _$$SessionListImplCopyWith<_$SessionListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SessionData _$SessionDataFromJson(Map<String, dynamic> json) {
  return _SessionData.fromJson(json);
}

/// @nodoc
mixin _$SessionData {
  String? get session_title_date => throw _privateConstructorUsedError;
  List<SessionList>? get session_list => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionDataCopyWith<SessionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionDataCopyWith<$Res> {
  factory $SessionDataCopyWith(
          SessionData value, $Res Function(SessionData) then) =
      _$SessionDataCopyWithImpl<$Res, SessionData>;
  @useResult
  $Res call({String? session_title_date, List<SessionList>? session_list});
}

/// @nodoc
class _$SessionDataCopyWithImpl<$Res, $Val extends SessionData>
    implements $SessionDataCopyWith<$Res> {
  _$SessionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session_title_date = freezed,
    Object? session_list = freezed,
  }) {
    return _then(_value.copyWith(
      session_title_date: freezed == session_title_date
          ? _value.session_title_date
          : session_title_date // ignore: cast_nullable_to_non_nullable
              as String?,
      session_list: freezed == session_list
          ? _value.session_list
          : session_list // ignore: cast_nullable_to_non_nullable
              as List<SessionList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionDataImplCopyWith<$Res>
    implements $SessionDataCopyWith<$Res> {
  factory _$$SessionDataImplCopyWith(
          _$SessionDataImpl value, $Res Function(_$SessionDataImpl) then) =
      __$$SessionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? session_title_date, List<SessionList>? session_list});
}

/// @nodoc
class __$$SessionDataImplCopyWithImpl<$Res>
    extends _$SessionDataCopyWithImpl<$Res, _$SessionDataImpl>
    implements _$$SessionDataImplCopyWith<$Res> {
  __$$SessionDataImplCopyWithImpl(
      _$SessionDataImpl _value, $Res Function(_$SessionDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session_title_date = freezed,
    Object? session_list = freezed,
  }) {
    return _then(_$SessionDataImpl(
      session_title_date: freezed == session_title_date
          ? _value.session_title_date
          : session_title_date // ignore: cast_nullable_to_non_nullable
              as String?,
      session_list: freezed == session_list
          ? _value._session_list
          : session_list // ignore: cast_nullable_to_non_nullable
              as List<SessionList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionDataImpl implements _SessionData {
  const _$SessionDataImpl(
      {this.session_title_date = '',
      final List<SessionList>? session_list = const []})
      : _session_list = session_list;

  factory _$SessionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionDataImplFromJson(json);

  @override
  @JsonKey()
  final String? session_title_date;
  final List<SessionList>? _session_list;
  @override
  @JsonKey()
  List<SessionList>? get session_list {
    final value = _session_list;
    if (value == null) return null;
    if (_session_list is EqualUnmodifiableListView) return _session_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SessionData(session_title_date: $session_title_date, session_list: $session_list)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionDataImpl &&
            (identical(other.session_title_date, session_title_date) ||
                other.session_title_date == session_title_date) &&
            const DeepCollectionEquality()
                .equals(other._session_list, _session_list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, session_title_date,
      const DeepCollectionEquality().hash(_session_list));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      __$$SessionDataImplCopyWithImpl<_$SessionDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionDataImplToJson(
      this,
    );
  }
}

abstract class _SessionData implements SessionData {
  const factory _SessionData(
      {final String? session_title_date,
      final List<SessionList>? session_list}) = _$SessionDataImpl;

  factory _SessionData.fromJson(Map<String, dynamic> json) =
      _$SessionDataImpl.fromJson;

  @override
  String? get session_title_date;
  @override
  List<SessionList>? get session_list;
  @override
  @JsonKey(ignore: true)
  _$$SessionDataImplCopyWith<_$SessionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
