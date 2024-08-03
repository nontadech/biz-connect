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

Files _$FilesFromJson(Map<String, dynamic> json) {
  return _Files.fromJson(json);
}

/// @nodoc
mixin _$Files {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilesCopyWith<Files> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesCopyWith<$Res> {
  factory $FilesCopyWith(Files value, $Res Function(Files) then) =
      _$FilesCopyWithImpl<$Res, Files>;
  @useResult
  $Res call({int? id, String? title, String? file, String? size});
}

/// @nodoc
class _$FilesCopyWithImpl<$Res, $Val extends Files>
    implements $FilesCopyWith<$Res> {
  _$FilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? file = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilesImplCopyWith<$Res> implements $FilesCopyWith<$Res> {
  factory _$$FilesImplCopyWith(
          _$FilesImpl value, $Res Function(_$FilesImpl) then) =
      __$$FilesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? file, String? size});
}

/// @nodoc
class __$$FilesImplCopyWithImpl<$Res>
    extends _$FilesCopyWithImpl<$Res, _$FilesImpl>
    implements _$$FilesImplCopyWith<$Res> {
  __$$FilesImplCopyWithImpl(
      _$FilesImpl _value, $Res Function(_$FilesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? file = freezed,
    Object? size = freezed,
  }) {
    return _then(_$FilesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilesImpl implements _Files {
  const _$FilesImpl({this.id, this.title = '', this.file = '', this.size = ''});

  factory _$FilesImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilesImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? title;
  @override
  @JsonKey()
  final String? file;
  @override
  @JsonKey()
  final String? size;

  @override
  String toString() {
    return 'Files(id: $id, title: $title, file: $file, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, file, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilesImplCopyWith<_$FilesImpl> get copyWith =>
      __$$FilesImplCopyWithImpl<_$FilesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilesImplToJson(
      this,
    );
  }
}

abstract class _Files implements Files {
  const factory _Files(
      {final int? id,
      final String? title,
      final String? file,
      final String? size}) = _$FilesImpl;

  factory _Files.fromJson(Map<String, dynamic> json) = _$FilesImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get file;
  @override
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$$FilesImplCopyWith<_$FilesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SpeakersData _$SpeakersDataFromJson(Map<String, dynamic> json) {
  return _SpeakersData.fromJson(json);
}

/// @nodoc
mixin _$SpeakersData {
  int? get speaker_id => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  List<Files>? get files => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeakersDataCopyWith<SpeakersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeakersDataCopyWith<$Res> {
  factory $SpeakersDataCopyWith(
          SpeakersData value, $Res Function(SpeakersData) then) =
      _$SpeakersDataCopyWithImpl<$Res, SpeakersData>;
  @useResult
  $Res call(
      {int? speaker_id,
      String? fullname,
      String? position,
      String? company,
      String? description,
      String? image_url,
      List<Files>? files});
}

/// @nodoc
class _$SpeakersDataCopyWithImpl<$Res, $Val extends SpeakersData>
    implements $SpeakersDataCopyWith<$Res> {
  _$SpeakersDataCopyWithImpl(this._value, this._then);

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
              as List<Files>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SpeakersDataImplCopyWith<$Res>
    implements $SpeakersDataCopyWith<$Res> {
  factory _$$SpeakersDataImplCopyWith(
          _$SpeakersDataImpl value, $Res Function(_$SpeakersDataImpl) then) =
      __$$SpeakersDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? speaker_id,
      String? fullname,
      String? position,
      String? company,
      String? description,
      String? image_url,
      List<Files>? files});
}

/// @nodoc
class __$$SpeakersDataImplCopyWithImpl<$Res>
    extends _$SpeakersDataCopyWithImpl<$Res, _$SpeakersDataImpl>
    implements _$$SpeakersDataImplCopyWith<$Res> {
  __$$SpeakersDataImplCopyWithImpl(
      _$SpeakersDataImpl _value, $Res Function(_$SpeakersDataImpl) _then)
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
    return _then(_$SpeakersDataImpl(
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
              as List<Files>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SpeakersDataImpl implements _SpeakersData {
  const _$SpeakersDataImpl(
      {this.speaker_id,
      this.fullname = '',
      this.position = '',
      this.company = '',
      this.description = '',
      this.image_url = '',
      final List<Files>? files = const []})
      : _files = files;

  factory _$SpeakersDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpeakersDataImplFromJson(json);

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
  final List<Files>? _files;
  @override
  @JsonKey()
  List<Files>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SpeakersData(speaker_id: $speaker_id, fullname: $fullname, position: $position, company: $company, description: $description, image_url: $image_url, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpeakersDataImpl &&
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
  _$$SpeakersDataImplCopyWith<_$SpeakersDataImpl> get copyWith =>
      __$$SpeakersDataImplCopyWithImpl<_$SpeakersDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpeakersDataImplToJson(
      this,
    );
  }
}

abstract class _SpeakersData implements SpeakersData {
  const factory _SpeakersData(
      {final int? speaker_id,
      final String? fullname,
      final String? position,
      final String? company,
      final String? description,
      final String? image_url,
      final List<Files>? files}) = _$SpeakersDataImpl;

  factory _SpeakersData.fromJson(Map<String, dynamic> json) =
      _$SpeakersDataImpl.fromJson;

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
  List<Files>? get files;
  @override
  @JsonKey(ignore: true)
  _$$SpeakersDataImplCopyWith<_$SpeakersDataImpl> get copyWith =>
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
  List<SpeakersData>? get speakers => throw _privateConstructorUsedError;

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
      List<SpeakersData>? speakers});
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
              as List<SpeakersData>?,
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
      List<SpeakersData>? speakers});
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
              as List<SpeakersData>?,
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
      final List<SpeakersData>? speakers = const []})
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
  final List<SpeakersData>? _speakers;
  @override
  @JsonKey()
  List<SpeakersData>? get speakers {
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
      final List<SpeakersData>? speakers}) = _$SessionListImpl;

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
  List<SpeakersData>? get speakers;
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

SessionAnswerData _$SessionAnswerDataFromJson(Map<String, dynamic> json) {
  return _SessionAnswerData.fromJson(json);
}

/// @nodoc
mixin _$SessionAnswerData {
  int? get id => throw _privateConstructorUsedError;
  int? get event_id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get choice_id => throw _privateConstructorUsedError;
  int? get question_id => throw _privateConstructorUsedError;
  int? get question_type_id => throw _privateConstructorUsedError;
  int? get agenda_id => throw _privateConstructorUsedError;
  int? get is_session => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get file_names => throw _privateConstructorUsedError;
  String? get multiple_choices => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionAnswerDataCopyWith<SessionAnswerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionAnswerDataCopyWith<$Res> {
  factory $SessionAnswerDataCopyWith(
          SessionAnswerData value, $Res Function(SessionAnswerData) then) =
      _$SessionAnswerDataCopyWithImpl<$Res, SessionAnswerData>;
  @useResult
  $Res call(
      {int? id,
      int? event_id,
      int? user_id,
      int? choice_id,
      int? question_id,
      int? question_type_id,
      int? agenda_id,
      int? is_session,
      String? text,
      String? file_names,
      String? multiple_choices,
      int? rating});
}

/// @nodoc
class _$SessionAnswerDataCopyWithImpl<$Res, $Val extends SessionAnswerData>
    implements $SessionAnswerDataCopyWith<$Res> {
  _$SessionAnswerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? event_id = freezed,
    Object? user_id = freezed,
    Object? choice_id = freezed,
    Object? question_id = freezed,
    Object? question_type_id = freezed,
    Object? agenda_id = freezed,
    Object? is_session = freezed,
    Object? text = freezed,
    Object? file_names = freezed,
    Object? multiple_choices = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      choice_id: freezed == choice_id
          ? _value.choice_id
          : choice_id // ignore: cast_nullable_to_non_nullable
              as int?,
      question_id: freezed == question_id
          ? _value.question_id
          : question_id // ignore: cast_nullable_to_non_nullable
              as int?,
      question_type_id: freezed == question_type_id
          ? _value.question_type_id
          : question_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      agenda_id: freezed == agenda_id
          ? _value.agenda_id
          : agenda_id // ignore: cast_nullable_to_non_nullable
              as int?,
      is_session: freezed == is_session
          ? _value.is_session
          : is_session // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      file_names: freezed == file_names
          ? _value.file_names
          : file_names // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple_choices: freezed == multiple_choices
          ? _value.multiple_choices
          : multiple_choices // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SessionAnswerDataImplCopyWith<$Res>
    implements $SessionAnswerDataCopyWith<$Res> {
  factory _$$SessionAnswerDataImplCopyWith(_$SessionAnswerDataImpl value,
          $Res Function(_$SessionAnswerDataImpl) then) =
      __$$SessionAnswerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? event_id,
      int? user_id,
      int? choice_id,
      int? question_id,
      int? question_type_id,
      int? agenda_id,
      int? is_session,
      String? text,
      String? file_names,
      String? multiple_choices,
      int? rating});
}

/// @nodoc
class __$$SessionAnswerDataImplCopyWithImpl<$Res>
    extends _$SessionAnswerDataCopyWithImpl<$Res, _$SessionAnswerDataImpl>
    implements _$$SessionAnswerDataImplCopyWith<$Res> {
  __$$SessionAnswerDataImplCopyWithImpl(_$SessionAnswerDataImpl _value,
      $Res Function(_$SessionAnswerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? event_id = freezed,
    Object? user_id = freezed,
    Object? choice_id = freezed,
    Object? question_id = freezed,
    Object? question_type_id = freezed,
    Object? agenda_id = freezed,
    Object? is_session = freezed,
    Object? text = freezed,
    Object? file_names = freezed,
    Object? multiple_choices = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$SessionAnswerDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      choice_id: freezed == choice_id
          ? _value.choice_id
          : choice_id // ignore: cast_nullable_to_non_nullable
              as int?,
      question_id: freezed == question_id
          ? _value.question_id
          : question_id // ignore: cast_nullable_to_non_nullable
              as int?,
      question_type_id: freezed == question_type_id
          ? _value.question_type_id
          : question_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      agenda_id: freezed == agenda_id
          ? _value.agenda_id
          : agenda_id // ignore: cast_nullable_to_non_nullable
              as int?,
      is_session: freezed == is_session
          ? _value.is_session
          : is_session // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      file_names: freezed == file_names
          ? _value.file_names
          : file_names // ignore: cast_nullable_to_non_nullable
              as String?,
      multiple_choices: freezed == multiple_choices
          ? _value.multiple_choices
          : multiple_choices // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionAnswerDataImpl implements _SessionAnswerData {
  const _$SessionAnswerDataImpl(
      {this.id,
      this.event_id,
      this.user_id,
      this.choice_id,
      this.question_id,
      this.question_type_id,
      this.agenda_id,
      this.is_session,
      this.text = '',
      this.file_names = '',
      this.multiple_choices = '',
      this.rating});

  factory _$SessionAnswerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionAnswerDataImplFromJson(json);

  @override
  final int? id;
  @override
  final int? event_id;
  @override
  final int? user_id;
  @override
  final int? choice_id;
  @override
  final int? question_id;
  @override
  final int? question_type_id;
  @override
  final int? agenda_id;
  @override
  final int? is_session;
  @override
  @JsonKey()
  final String? text;
  @override
  @JsonKey()
  final String? file_names;
  @override
  @JsonKey()
  final String? multiple_choices;
  @override
  final int? rating;

  @override
  String toString() {
    return 'SessionAnswerData(id: $id, event_id: $event_id, user_id: $user_id, choice_id: $choice_id, question_id: $question_id, question_type_id: $question_type_id, agenda_id: $agenda_id, is_session: $is_session, text: $text, file_names: $file_names, multiple_choices: $multiple_choices, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionAnswerDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.event_id, event_id) ||
                other.event_id == event_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.choice_id, choice_id) ||
                other.choice_id == choice_id) &&
            (identical(other.question_id, question_id) ||
                other.question_id == question_id) &&
            (identical(other.question_type_id, question_type_id) ||
                other.question_type_id == question_type_id) &&
            (identical(other.agenda_id, agenda_id) ||
                other.agenda_id == agenda_id) &&
            (identical(other.is_session, is_session) ||
                other.is_session == is_session) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.file_names, file_names) ||
                other.file_names == file_names) &&
            (identical(other.multiple_choices, multiple_choices) ||
                other.multiple_choices == multiple_choices) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      event_id,
      user_id,
      choice_id,
      question_id,
      question_type_id,
      agenda_id,
      is_session,
      text,
      file_names,
      multiple_choices,
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionAnswerDataImplCopyWith<_$SessionAnswerDataImpl> get copyWith =>
      __$$SessionAnswerDataImplCopyWithImpl<_$SessionAnswerDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionAnswerDataImplToJson(
      this,
    );
  }
}

abstract class _SessionAnswerData implements SessionAnswerData {
  const factory _SessionAnswerData(
      {final int? id,
      final int? event_id,
      final int? user_id,
      final int? choice_id,
      final int? question_id,
      final int? question_type_id,
      final int? agenda_id,
      final int? is_session,
      final String? text,
      final String? file_names,
      final String? multiple_choices,
      final int? rating}) = _$SessionAnswerDataImpl;

  factory _SessionAnswerData.fromJson(Map<String, dynamic> json) =
      _$SessionAnswerDataImpl.fromJson;

  @override
  int? get id;
  @override
  int? get event_id;
  @override
  int? get user_id;
  @override
  int? get choice_id;
  @override
  int? get question_id;
  @override
  int? get question_type_id;
  @override
  int? get agenda_id;
  @override
  int? get is_session;
  @override
  String? get text;
  @override
  String? get file_names;
  @override
  String? get multiple_choices;
  @override
  int? get rating;
  @override
  @JsonKey(ignore: true)
  _$$SessionAnswerDataImplCopyWith<_$SessionAnswerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FloorPlanData _$FloorPlanDataFromJson(Map<String, dynamic> json) {
  return _FloorPlanData.fromJson(json);
}

/// @nodoc
mixin _$FloorPlanData {
  int? get fl_id => throw _privateConstructorUsedError;
  String? get fl_title => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FloorPlanDataCopyWith<FloorPlanData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FloorPlanDataCopyWith<$Res> {
  factory $FloorPlanDataCopyWith(
          FloorPlanData value, $Res Function(FloorPlanData) then) =
      _$FloorPlanDataCopyWithImpl<$Res, FloorPlanData>;
  @useResult
  $Res call(
      {int? fl_id, String? fl_title, String? image_url, String? description});
}

/// @nodoc
class _$FloorPlanDataCopyWithImpl<$Res, $Val extends FloorPlanData>
    implements $FloorPlanDataCopyWith<$Res> {
  _$FloorPlanDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fl_id = freezed,
    Object? fl_title = freezed,
    Object? image_url = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      fl_id: freezed == fl_id
          ? _value.fl_id
          : fl_id // ignore: cast_nullable_to_non_nullable
              as int?,
      fl_title: freezed == fl_title
          ? _value.fl_title
          : fl_title // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FloorPlanDataImplCopyWith<$Res>
    implements $FloorPlanDataCopyWith<$Res> {
  factory _$$FloorPlanDataImplCopyWith(
          _$FloorPlanDataImpl value, $Res Function(_$FloorPlanDataImpl) then) =
      __$$FloorPlanDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? fl_id, String? fl_title, String? image_url, String? description});
}

/// @nodoc
class __$$FloorPlanDataImplCopyWithImpl<$Res>
    extends _$FloorPlanDataCopyWithImpl<$Res, _$FloorPlanDataImpl>
    implements _$$FloorPlanDataImplCopyWith<$Res> {
  __$$FloorPlanDataImplCopyWithImpl(
      _$FloorPlanDataImpl _value, $Res Function(_$FloorPlanDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fl_id = freezed,
    Object? fl_title = freezed,
    Object? image_url = freezed,
    Object? description = freezed,
  }) {
    return _then(_$FloorPlanDataImpl(
      fl_id: freezed == fl_id
          ? _value.fl_id
          : fl_id // ignore: cast_nullable_to_non_nullable
              as int?,
      fl_title: freezed == fl_title
          ? _value.fl_title
          : fl_title // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FloorPlanDataImpl implements _FloorPlanData {
  const _$FloorPlanDataImpl(
      {this.fl_id,
      this.fl_title = '',
      this.image_url = '',
      this.description = ''});

  factory _$FloorPlanDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FloorPlanDataImplFromJson(json);

  @override
  final int? fl_id;
  @override
  @JsonKey()
  final String? fl_title;
  @override
  @JsonKey()
  final String? image_url;
  @override
  @JsonKey()
  final String? description;

  @override
  String toString() {
    return 'FloorPlanData(fl_id: $fl_id, fl_title: $fl_title, image_url: $image_url, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FloorPlanDataImpl &&
            (identical(other.fl_id, fl_id) || other.fl_id == fl_id) &&
            (identical(other.fl_title, fl_title) ||
                other.fl_title == fl_title) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fl_id, fl_title, image_url, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FloorPlanDataImplCopyWith<_$FloorPlanDataImpl> get copyWith =>
      __$$FloorPlanDataImplCopyWithImpl<_$FloorPlanDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FloorPlanDataImplToJson(
      this,
    );
  }
}

abstract class _FloorPlanData implements FloorPlanData {
  const factory _FloorPlanData(
      {final int? fl_id,
      final String? fl_title,
      final String? image_url,
      final String? description}) = _$FloorPlanDataImpl;

  factory _FloorPlanData.fromJson(Map<String, dynamic> json) =
      _$FloorPlanDataImpl.fromJson;

  @override
  int? get fl_id;
  @override
  String? get fl_title;
  @override
  String? get image_url;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$FloorPlanDataImplCopyWith<_$FloorPlanDataImpl> get copyWith =>
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
  String? get image_url => throw _privateConstructorUsedError;
  String? get attendees_detail => throw _privateConstructorUsedError;

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
      String? image_url,
      String? attendees_detail});
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
    Object? image_url = freezed,
    Object? attendees_detail = freezed,
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
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      attendees_detail: freezed == attendees_detail
          ? _value.attendees_detail
          : attendees_detail // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? image_url,
      String? attendees_detail});
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
    Object? image_url = freezed,
    Object? attendees_detail = freezed,
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
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      attendees_detail: freezed == attendees_detail
          ? _value.attendees_detail
          : attendees_detail // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.image_url = '',
      this.attendees_detail = ''});

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
  final String? image_url;
  @override
  @JsonKey()
  final String? attendees_detail;

  @override
  String toString() {
    return 'SpeakerData(speaker_id: $speaker_id, fullname: $fullname, position: $position, company: $company, image_url: $image_url, attendees_detail: $attendees_detail)';
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
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.attendees_detail, attendees_detail) ||
                other.attendees_detail == attendees_detail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, speaker_id, fullname, position,
      company, image_url, attendees_detail);

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
      final String? image_url,
      final String? attendees_detail}) = _$SpeakerDataImpl;

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
  String? get image_url;
  @override
  String? get attendees_detail;
  @override
  @JsonKey(ignore: true)
  _$$SpeakerDataImplCopyWith<_$SpeakerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventFileData _$EventFileDataFromJson(Map<String, dynamic> json) {
  return _EventFileData.fromJson(json);
}

/// @nodoc
mixin _$EventFileData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get path_file => throw _privateConstructorUsedError;
  String? get size_file => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventFileDataCopyWith<EventFileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventFileDataCopyWith<$Res> {
  factory $EventFileDataCopyWith(
          EventFileData value, $Res Function(EventFileData) then) =
      _$EventFileDataCopyWithImpl<$Res, EventFileData>;
  @useResult
  $Res call({int? id, String? name, String? path_file, String? size_file});
}

/// @nodoc
class _$EventFileDataCopyWithImpl<$Res, $Val extends EventFileData>
    implements $EventFileDataCopyWith<$Res> {
  _$EventFileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path_file = freezed,
    Object? size_file = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path_file: freezed == path_file
          ? _value.path_file
          : path_file // ignore: cast_nullable_to_non_nullable
              as String?,
      size_file: freezed == size_file
          ? _value.size_file
          : size_file // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventFileDataImplCopyWith<$Res>
    implements $EventFileDataCopyWith<$Res> {
  factory _$$EventFileDataImplCopyWith(
          _$EventFileDataImpl value, $Res Function(_$EventFileDataImpl) then) =
      __$$EventFileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? path_file, String? size_file});
}

/// @nodoc
class __$$EventFileDataImplCopyWithImpl<$Res>
    extends _$EventFileDataCopyWithImpl<$Res, _$EventFileDataImpl>
    implements _$$EventFileDataImplCopyWith<$Res> {
  __$$EventFileDataImplCopyWithImpl(
      _$EventFileDataImpl _value, $Res Function(_$EventFileDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? path_file = freezed,
    Object? size_file = freezed,
  }) {
    return _then(_$EventFileDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      path_file: freezed == path_file
          ? _value.path_file
          : path_file // ignore: cast_nullable_to_non_nullable
              as String?,
      size_file: freezed == size_file
          ? _value.size_file
          : size_file // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventFileDataImpl implements _EventFileData {
  const _$EventFileDataImpl(
      {this.id, this.name = '', this.path_file = '', this.size_file = ''});

  factory _$EventFileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventFileDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? path_file;
  @override
  @JsonKey()
  final String? size_file;

  @override
  String toString() {
    return 'EventFileData(id: $id, name: $name, path_file: $path_file, size_file: $size_file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventFileDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path_file, path_file) ||
                other.path_file == path_file) &&
            (identical(other.size_file, size_file) ||
                other.size_file == size_file));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, path_file, size_file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventFileDataImplCopyWith<_$EventFileDataImpl> get copyWith =>
      __$$EventFileDataImplCopyWithImpl<_$EventFileDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventFileDataImplToJson(
      this,
    );
  }
}

abstract class _EventFileData implements EventFileData {
  const factory _EventFileData(
      {final int? id,
      final String? name,
      final String? path_file,
      final String? size_file}) = _$EventFileDataImpl;

  factory _EventFileData.fromJson(Map<String, dynamic> json) =
      _$EventFileDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get path_file;
  @override
  String? get size_file;
  @override
  @JsonKey(ignore: true)
  _$$EventFileDataImplCopyWith<_$EventFileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
