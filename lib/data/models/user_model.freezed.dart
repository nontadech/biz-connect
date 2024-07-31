// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  UserData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({UserData? data});

  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

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
              as UserData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserData? data});

  @override
  $UserDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UserImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({this.data});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final UserData? data;

  @override
  String toString() {
    return 'User(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User({final UserData? data}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  UserData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAttendee _$UserAttendeeFromJson(Map<String, dynamic> json) {
  return _UserAttendee.fromJson(json);
}

/// @nodoc
mixin _$UserAttendee {
  Attendee? get data => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAttendeeCopyWith<UserAttendee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAttendeeCopyWith<$Res> {
  factory $UserAttendeeCopyWith(
          UserAttendee value, $Res Function(UserAttendee) then) =
      _$UserAttendeeCopyWithImpl<$Res, UserAttendee>;
  @useResult
  $Res call({Attendee? data, String? message});

  $AttendeeCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserAttendeeCopyWithImpl<$Res, $Val extends UserAttendee>
    implements $UserAttendeeCopyWith<$Res> {
  _$UserAttendeeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Attendee?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendeeCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $AttendeeCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAttendeeImplCopyWith<$Res>
    implements $UserAttendeeCopyWith<$Res> {
  factory _$$UserAttendeeImplCopyWith(
          _$UserAttendeeImpl value, $Res Function(_$UserAttendeeImpl) then) =
      __$$UserAttendeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Attendee? data, String? message});

  @override
  $AttendeeCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UserAttendeeImplCopyWithImpl<$Res>
    extends _$UserAttendeeCopyWithImpl<$Res, _$UserAttendeeImpl>
    implements _$$UserAttendeeImplCopyWith<$Res> {
  __$$UserAttendeeImplCopyWithImpl(
      _$UserAttendeeImpl _value, $Res Function(_$UserAttendeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? message = freezed,
  }) {
    return _then(_$UserAttendeeImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Attendee?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAttendeeImpl implements _UserAttendee {
  const _$UserAttendeeImpl({this.data, this.message});

  factory _$UserAttendeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAttendeeImplFromJson(json);

  @override
  final Attendee? data;
  @override
  final String? message;

  @override
  String toString() {
    return 'UserAttendee(data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAttendeeImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAttendeeImplCopyWith<_$UserAttendeeImpl> get copyWith =>
      __$$UserAttendeeImplCopyWithImpl<_$UserAttendeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAttendeeImplToJson(
      this,
    );
  }
}

abstract class _UserAttendee implements UserAttendee {
  const factory _UserAttendee({final Attendee? data, final String? message}) =
      _$UserAttendeeImpl;

  factory _UserAttendee.fromJson(Map<String, dynamic> json) =
      _$UserAttendeeImpl.fromJson;

  @override
  Attendee? get data;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UserAttendeeImplCopyWith<_$UserAttendeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
