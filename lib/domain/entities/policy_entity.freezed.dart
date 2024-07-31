// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PolicyData _$PolicyDataFromJson(Map<String, dynamic> json) {
  return _PolicyData.fromJson(json);
}

/// @nodoc
mixin _$PolicyData {
  int? get id => throw _privateConstructorUsedError;
  String? get api_token => throw _privateConstructorUsedError;
  int? get is_pdpa => throw _privateConstructorUsedError;
  int? get is_recondition => throw _privateConstructorUsedError;
  int? get attendee_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyDataCopyWith<PolicyData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyDataCopyWith<$Res> {
  factory $PolicyDataCopyWith(
          PolicyData value, $Res Function(PolicyData) then) =
      _$PolicyDataCopyWithImpl<$Res, PolicyData>;
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      int? is_pdpa,
      int? is_recondition,
      int? attendee_id});
}

/// @nodoc
class _$PolicyDataCopyWithImpl<$Res, $Val extends PolicyData>
    implements $PolicyDataCopyWith<$Res> {
  _$PolicyDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? api_token = freezed,
    Object? is_pdpa = freezed,
    Object? is_recondition = freezed,
    Object? attendee_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      api_token: freezed == api_token
          ? _value.api_token
          : api_token // ignore: cast_nullable_to_non_nullable
              as String?,
      is_pdpa: freezed == is_pdpa
          ? _value.is_pdpa
          : is_pdpa // ignore: cast_nullable_to_non_nullable
              as int?,
      is_recondition: freezed == is_recondition
          ? _value.is_recondition
          : is_recondition // ignore: cast_nullable_to_non_nullable
              as int?,
      attendee_id: freezed == attendee_id
          ? _value.attendee_id
          : attendee_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyDataImplCopyWith<$Res>
    implements $PolicyDataCopyWith<$Res> {
  factory _$$PolicyDataImplCopyWith(
          _$PolicyDataImpl value, $Res Function(_$PolicyDataImpl) then) =
      __$$PolicyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      int? is_pdpa,
      int? is_recondition,
      int? attendee_id});
}

/// @nodoc
class __$$PolicyDataImplCopyWithImpl<$Res>
    extends _$PolicyDataCopyWithImpl<$Res, _$PolicyDataImpl>
    implements _$$PolicyDataImplCopyWith<$Res> {
  __$$PolicyDataImplCopyWithImpl(
      _$PolicyDataImpl _value, $Res Function(_$PolicyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? api_token = freezed,
    Object? is_pdpa = freezed,
    Object? is_recondition = freezed,
    Object? attendee_id = freezed,
  }) {
    return _then(_$PolicyDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      api_token: freezed == api_token
          ? _value.api_token
          : api_token // ignore: cast_nullable_to_non_nullable
              as String?,
      is_pdpa: freezed == is_pdpa
          ? _value.is_pdpa
          : is_pdpa // ignore: cast_nullable_to_non_nullable
              as int?,
      is_recondition: freezed == is_recondition
          ? _value.is_recondition
          : is_recondition // ignore: cast_nullable_to_non_nullable
              as int?,
      attendee_id: freezed == attendee_id
          ? _value.attendee_id
          : attendee_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyDataImpl implements _PolicyData {
  const _$PolicyDataImpl(
      {this.id,
      this.api_token = '',
      this.is_pdpa = 0,
      this.is_recondition = 0,
      this.attendee_id});

  factory _$PolicyDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? api_token;
  @override
  @JsonKey()
  final int? is_pdpa;
  @override
  @JsonKey()
  final int? is_recondition;
  @override
  final int? attendee_id;

  @override
  String toString() {
    return 'PolicyData(id: $id, api_token: $api_token, is_pdpa: $is_pdpa, is_recondition: $is_recondition, attendee_id: $attendee_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.api_token, api_token) ||
                other.api_token == api_token) &&
            (identical(other.is_pdpa, is_pdpa) || other.is_pdpa == is_pdpa) &&
            (identical(other.is_recondition, is_recondition) ||
                other.is_recondition == is_recondition) &&
            (identical(other.attendee_id, attendee_id) ||
                other.attendee_id == attendee_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, api_token, is_pdpa, is_recondition, attendee_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyDataImplCopyWith<_$PolicyDataImpl> get copyWith =>
      __$$PolicyDataImplCopyWithImpl<_$PolicyDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyDataImplToJson(
      this,
    );
  }
}

abstract class _PolicyData implements PolicyData {
  const factory _PolicyData(
      {final int? id,
      final String? api_token,
      final int? is_pdpa,
      final int? is_recondition,
      final int? attendee_id}) = _$PolicyDataImpl;

  factory _PolicyData.fromJson(Map<String, dynamic> json) =
      _$PolicyDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get api_token;
  @override
  int? get is_pdpa;
  @override
  int? get is_recondition;
  @override
  int? get attendee_id;
  @override
  @JsonKey(ignore: true)
  _$$PolicyDataImplCopyWith<_$PolicyDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicyDetailData _$PolicyDetailDataFromJson(Map<String, dynamic> json) {
  return _PolicyDetailData.fromJson(json);
}

/// @nodoc
mixin _$PolicyDetailData {
  int? get active => throw _privateConstructorUsedError;
  TermConditionType? get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyDetailDataCopyWith<PolicyDetailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyDetailDataCopyWith<$Res> {
  factory $PolicyDetailDataCopyWith(
          PolicyDetailData value, $Res Function(PolicyDetailData) then) =
      _$PolicyDetailDataCopyWithImpl<$Res, PolicyDetailData>;
  @useResult
  $Res call({int? active, TermConditionType? type, String? description});
}

/// @nodoc
class _$PolicyDetailDataCopyWithImpl<$Res, $Val extends PolicyDetailData>
    implements $PolicyDetailDataCopyWith<$Res> {
  _$PolicyDetailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TermConditionType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicyDetailDataImplCopyWith<$Res>
    implements $PolicyDetailDataCopyWith<$Res> {
  factory _$$PolicyDetailDataImplCopyWith(_$PolicyDetailDataImpl value,
          $Res Function(_$PolicyDetailDataImpl) then) =
      __$$PolicyDetailDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? active, TermConditionType? type, String? description});
}

/// @nodoc
class __$$PolicyDetailDataImplCopyWithImpl<$Res>
    extends _$PolicyDetailDataCopyWithImpl<$Res, _$PolicyDetailDataImpl>
    implements _$$PolicyDetailDataImplCopyWith<$Res> {
  __$$PolicyDetailDataImplCopyWithImpl(_$PolicyDetailDataImpl _value,
      $Res Function(_$PolicyDetailDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? type = freezed,
    Object? description = freezed,
  }) {
    return _then(_$PolicyDetailDataImpl(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TermConditionType?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyDetailDataImpl implements _PolicyDetailData {
  const _$PolicyDetailDataImpl({this.active, this.type, this.description});

  factory _$PolicyDetailDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyDetailDataImplFromJson(json);

  @override
  final int? active;
  @override
  final TermConditionType? type;
  @override
  final String? description;

  @override
  String toString() {
    return 'PolicyDetailData(active: $active, type: $type, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyDetailDataImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, active, type, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyDetailDataImplCopyWith<_$PolicyDetailDataImpl> get copyWith =>
      __$$PolicyDetailDataImplCopyWithImpl<_$PolicyDetailDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyDetailDataImplToJson(
      this,
    );
  }
}

abstract class _PolicyDetailData implements PolicyDetailData {
  const factory _PolicyDetailData(
      {final int? active,
      final TermConditionType? type,
      final String? description}) = _$PolicyDetailDataImpl;

  factory _PolicyDetailData.fromJson(Map<String, dynamic> json) =
      _$PolicyDetailDataImpl.fromJson;

  @override
  int? get active;
  @override
  TermConditionType? get type;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$PolicyDetailDataImplCopyWith<_$PolicyDetailDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicySaveData _$PolicySaveDataFromJson(Map<String, dynamic> json) {
  return _PolicySaveData.fromJson(json);
}

/// @nodoc
mixin _$PolicySaveData {
  int? get id => throw _privateConstructorUsedError;
  String? get api_token => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;
  int? get attendee_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicySaveDataCopyWith<PolicySaveData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicySaveDataCopyWith<$Res> {
  factory $PolicySaveDataCopyWith(
          PolicySaveData value, $Res Function(PolicySaveData) then) =
      _$PolicySaveDataCopyWithImpl<$Res, PolicySaveData>;
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      String? full_name,
      String? email,
      String? phone,
      String? position,
      String? action,
      int? attendee_id});
}

/// @nodoc
class _$PolicySaveDataCopyWithImpl<$Res, $Val extends PolicySaveData>
    implements $PolicySaveDataCopyWith<$Res> {
  _$PolicySaveDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? api_token = freezed,
    Object? full_name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? action = freezed,
    Object? attendee_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      api_token: freezed == api_token
          ? _value.api_token
          : api_token // ignore: cast_nullable_to_non_nullable
              as String?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      attendee_id: freezed == attendee_id
          ? _value.attendee_id
          : attendee_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PolicySaveDataImplCopyWith<$Res>
    implements $PolicySaveDataCopyWith<$Res> {
  factory _$$PolicySaveDataImplCopyWith(_$PolicySaveDataImpl value,
          $Res Function(_$PolicySaveDataImpl) then) =
      __$$PolicySaveDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      String? full_name,
      String? email,
      String? phone,
      String? position,
      String? action,
      int? attendee_id});
}

/// @nodoc
class __$$PolicySaveDataImplCopyWithImpl<$Res>
    extends _$PolicySaveDataCopyWithImpl<$Res, _$PolicySaveDataImpl>
    implements _$$PolicySaveDataImplCopyWith<$Res> {
  __$$PolicySaveDataImplCopyWithImpl(
      _$PolicySaveDataImpl _value, $Res Function(_$PolicySaveDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? api_token = freezed,
    Object? full_name = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? action = freezed,
    Object? attendee_id = freezed,
  }) {
    return _then(_$PolicySaveDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      api_token: freezed == api_token
          ? _value.api_token
          : api_token // ignore: cast_nullable_to_non_nullable
              as String?,
      full_name: freezed == full_name
          ? _value.full_name
          : full_name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      attendee_id: freezed == attendee_id
          ? _value.attendee_id
          : attendee_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicySaveDataImpl implements _PolicySaveData {
  const _$PolicySaveDataImpl(
      {this.id,
      this.api_token = '',
      this.full_name = '',
      this.email = '',
      this.phone = '',
      this.position = '',
      this.action = '',
      this.attendee_id});

  factory _$PolicySaveDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicySaveDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? api_token;
  @override
  @JsonKey()
  final String? full_name;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final String? position;
  @override
  @JsonKey()
  final String? action;
  @override
  final int? attendee_id;

  @override
  String toString() {
    return 'PolicySaveData(id: $id, api_token: $api_token, full_name: $full_name, email: $email, phone: $phone, position: $position, action: $action, attendee_id: $attendee_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicySaveDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.api_token, api_token) ||
                other.api_token == api_token) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.attendee_id, attendee_id) ||
                other.attendee_id == attendee_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, api_token, full_name, email,
      phone, position, action, attendee_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicySaveDataImplCopyWith<_$PolicySaveDataImpl> get copyWith =>
      __$$PolicySaveDataImplCopyWithImpl<_$PolicySaveDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicySaveDataImplToJson(
      this,
    );
  }
}

abstract class _PolicySaveData implements PolicySaveData {
  const factory _PolicySaveData(
      {final int? id,
      final String? api_token,
      final String? full_name,
      final String? email,
      final String? phone,
      final String? position,
      final String? action,
      final int? attendee_id}) = _$PolicySaveDataImpl;

  factory _PolicySaveData.fromJson(Map<String, dynamic> json) =
      _$PolicySaveDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get api_token;
  @override
  String? get full_name;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get position;
  @override
  String? get action;
  @override
  int? get attendee_id;
  @override
  @JsonKey(ignore: true)
  _$$PolicySaveDataImplCopyWith<_$PolicySaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
