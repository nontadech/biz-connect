// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCategory _$UserCategoryFromJson(Map<String, dynamic> json) {
  return _UserCategory.fromJson(json);
}

/// @nodoc
mixin _$UserCategory {
  int? get cate_id => throw _privateConstructorUsedError;
  String? get cate_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCategoryCopyWith<UserCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCategoryCopyWith<$Res> {
  factory $UserCategoryCopyWith(
          UserCategory value, $Res Function(UserCategory) then) =
      _$UserCategoryCopyWithImpl<$Res, UserCategory>;
  @useResult
  $Res call({int? cate_id, String? cate_name});
}

/// @nodoc
class _$UserCategoryCopyWithImpl<$Res, $Val extends UserCategory>
    implements $UserCategoryCopyWith<$Res> {
  _$UserCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cate_id = freezed,
    Object? cate_name = freezed,
  }) {
    return _then(_value.copyWith(
      cate_id: freezed == cate_id
          ? _value.cate_id
          : cate_id // ignore: cast_nullable_to_non_nullable
              as int?,
      cate_name: freezed == cate_name
          ? _value.cate_name
          : cate_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCategoryImplCopyWith<$Res>
    implements $UserCategoryCopyWith<$Res> {
  factory _$$UserCategoryImplCopyWith(
          _$UserCategoryImpl value, $Res Function(_$UserCategoryImpl) then) =
      __$$UserCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? cate_id, String? cate_name});
}

/// @nodoc
class __$$UserCategoryImplCopyWithImpl<$Res>
    extends _$UserCategoryCopyWithImpl<$Res, _$UserCategoryImpl>
    implements _$$UserCategoryImplCopyWith<$Res> {
  __$$UserCategoryImplCopyWithImpl(
      _$UserCategoryImpl _value, $Res Function(_$UserCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cate_id = freezed,
    Object? cate_name = freezed,
  }) {
    return _then(_$UserCategoryImpl(
      cate_id: freezed == cate_id
          ? _value.cate_id
          : cate_id // ignore: cast_nullable_to_non_nullable
              as int?,
      cate_name: freezed == cate_name
          ? _value.cate_name
          : cate_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCategoryImpl implements _UserCategory {
  _$UserCategoryImpl({this.cate_id, this.cate_name});

  factory _$UserCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCategoryImplFromJson(json);

  @override
  final int? cate_id;
  @override
  final String? cate_name;

  @override
  String toString() {
    return 'UserCategory(cate_id: $cate_id, cate_name: $cate_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCategoryImpl &&
            (identical(other.cate_id, cate_id) || other.cate_id == cate_id) &&
            (identical(other.cate_name, cate_name) ||
                other.cate_name == cate_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cate_id, cate_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCategoryImplCopyWith<_$UserCategoryImpl> get copyWith =>
      __$$UserCategoryImplCopyWithImpl<_$UserCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCategoryImplToJson(
      this,
    );
  }
}

abstract class _UserCategory implements UserCategory {
  factory _UserCategory({final int? cate_id, final String? cate_name}) =
      _$UserCategoryImpl;

  factory _UserCategory.fromJson(Map<String, dynamic> json) =
      _$UserCategoryImpl.fromJson;

  @override
  int? get cate_id;
  @override
  String? get cate_name;
  @override
  @JsonKey(ignore: true)
  _$$UserCategoryImplCopyWith<_$UserCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInterest _$UserInterestFromJson(Map<String, dynamic> json) {
  return _UserInterest.fromJson(json);
}

/// @nodoc
mixin _$UserInterest {
  int? get interest_id => throw _privateConstructorUsedError;
  String? get interest_name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInterestCopyWith<UserInterest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInterestCopyWith<$Res> {
  factory $UserInterestCopyWith(
          UserInterest value, $Res Function(UserInterest) then) =
      _$UserInterestCopyWithImpl<$Res, UserInterest>;
  @useResult
  $Res call({int? interest_id, String? interest_name});
}

/// @nodoc
class _$UserInterestCopyWithImpl<$Res, $Val extends UserInterest>
    implements $UserInterestCopyWith<$Res> {
  _$UserInterestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interest_id = freezed,
    Object? interest_name = freezed,
  }) {
    return _then(_value.copyWith(
      interest_id: freezed == interest_id
          ? _value.interest_id
          : interest_id // ignore: cast_nullable_to_non_nullable
              as int?,
      interest_name: freezed == interest_name
          ? _value.interest_name
          : interest_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInterestImplCopyWith<$Res>
    implements $UserInterestCopyWith<$Res> {
  factory _$$UserInterestImplCopyWith(
          _$UserInterestImpl value, $Res Function(_$UserInterestImpl) then) =
      __$$UserInterestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? interest_id, String? interest_name});
}

/// @nodoc
class __$$UserInterestImplCopyWithImpl<$Res>
    extends _$UserInterestCopyWithImpl<$Res, _$UserInterestImpl>
    implements _$$UserInterestImplCopyWith<$Res> {
  __$$UserInterestImplCopyWithImpl(
      _$UserInterestImpl _value, $Res Function(_$UserInterestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interest_id = freezed,
    Object? interest_name = freezed,
  }) {
    return _then(_$UserInterestImpl(
      interest_id: freezed == interest_id
          ? _value.interest_id
          : interest_id // ignore: cast_nullable_to_non_nullable
              as int?,
      interest_name: freezed == interest_name
          ? _value.interest_name
          : interest_name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInterestImpl implements _UserInterest {
  _$UserInterestImpl({this.interest_id, this.interest_name});

  factory _$UserInterestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInterestImplFromJson(json);

  @override
  final int? interest_id;
  @override
  final String? interest_name;

  @override
  String toString() {
    return 'UserInterest(interest_id: $interest_id, interest_name: $interest_name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInterestImpl &&
            (identical(other.interest_id, interest_id) ||
                other.interest_id == interest_id) &&
            (identical(other.interest_name, interest_name) ||
                other.interest_name == interest_name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, interest_id, interest_name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInterestImplCopyWith<_$UserInterestImpl> get copyWith =>
      __$$UserInterestImplCopyWithImpl<_$UserInterestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInterestImplToJson(
      this,
    );
  }
}

abstract class _UserInterest implements UserInterest {
  factory _UserInterest({final int? interest_id, final String? interest_name}) =
      _$UserInterestImpl;

  factory _UserInterest.fromJson(Map<String, dynamic> json) =
      _$UserInterestImpl.fromJson;

  @override
  int? get interest_id;
  @override
  String? get interest_name;
  @override
  @JsonKey(ignore: true)
  _$$UserInterestImplCopyWith<_$UserInterestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Exhibitor _$ExhibitorFromJson(Map<String, dynamic> json) {
  return _Exhibitor.fromJson(json);
}

/// @nodoc
mixin _$Exhibitor {
  int? get id => throw _privateConstructorUsedError;
  String? get api_token => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  int? get status_contact => throw _privateConstructorUsedError;
  int? get is_recondition => throw _privateConstructorUsedError;
  bool? get is_exhibitor => throw _privateConstructorUsedError;
  String? get company_info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExhibitorCopyWith<Exhibitor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitorCopyWith<$Res> {
  factory $ExhibitorCopyWith(Exhibitor value, $Res Function(Exhibitor) then) =
      _$ExhibitorCopyWithImpl<$Res, Exhibitor>;
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      String? full_name,
      String? profile,
      String? email,
      String? phone,
      String? position,
      String? company,
      int? status_contact,
      int? is_recondition,
      bool? is_exhibitor,
      String? company_info});
}

/// @nodoc
class _$ExhibitorCopyWithImpl<$Res, $Val extends Exhibitor>
    implements $ExhibitorCopyWith<$Res> {
  _$ExhibitorCopyWithImpl(this._value, this._then);

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
    Object? profile = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? company = freezed,
    Object? status_contact = freezed,
    Object? is_recondition = freezed,
    Object? is_exhibitor = freezed,
    Object? company_info = freezed,
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
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      status_contact: freezed == status_contact
          ? _value.status_contact
          : status_contact // ignore: cast_nullable_to_non_nullable
              as int?,
      is_recondition: freezed == is_recondition
          ? _value.is_recondition
          : is_recondition // ignore: cast_nullable_to_non_nullable
              as int?,
      is_exhibitor: freezed == is_exhibitor
          ? _value.is_exhibitor
          : is_exhibitor // ignore: cast_nullable_to_non_nullable
              as bool?,
      company_info: freezed == company_info
          ? _value.company_info
          : company_info // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExhibitorImplCopyWith<$Res>
    implements $ExhibitorCopyWith<$Res> {
  factory _$$ExhibitorImplCopyWith(
          _$ExhibitorImpl value, $Res Function(_$ExhibitorImpl) then) =
      __$$ExhibitorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      String? full_name,
      String? profile,
      String? email,
      String? phone,
      String? position,
      String? company,
      int? status_contact,
      int? is_recondition,
      bool? is_exhibitor,
      String? company_info});
}

/// @nodoc
class __$$ExhibitorImplCopyWithImpl<$Res>
    extends _$ExhibitorCopyWithImpl<$Res, _$ExhibitorImpl>
    implements _$$ExhibitorImplCopyWith<$Res> {
  __$$ExhibitorImplCopyWithImpl(
      _$ExhibitorImpl _value, $Res Function(_$ExhibitorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? api_token = freezed,
    Object? full_name = freezed,
    Object? profile = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? company = freezed,
    Object? status_contact = freezed,
    Object? is_recondition = freezed,
    Object? is_exhibitor = freezed,
    Object? company_info = freezed,
  }) {
    return _then(_$ExhibitorImpl(
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
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
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
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      status_contact: freezed == status_contact
          ? _value.status_contact
          : status_contact // ignore: cast_nullable_to_non_nullable
              as int?,
      is_recondition: freezed == is_recondition
          ? _value.is_recondition
          : is_recondition // ignore: cast_nullable_to_non_nullable
              as int?,
      is_exhibitor: freezed == is_exhibitor
          ? _value.is_exhibitor
          : is_exhibitor // ignore: cast_nullable_to_non_nullable
              as bool?,
      company_info: freezed == company_info
          ? _value.company_info
          : company_info // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExhibitorImpl extends _Exhibitor {
  const _$ExhibitorImpl(
      {this.id,
      this.api_token,
      this.full_name,
      this.profile,
      this.email,
      this.phone,
      this.position,
      this.company,
      this.status_contact,
      this.is_recondition,
      this.is_exhibitor,
      this.company_info})
      : super._();

  factory _$ExhibitorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExhibitorImplFromJson(json);

  @override
  final int? id;
  @override
  final String? api_token;
  @override
  final String? full_name;
  @override
  final String? profile;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  final String? position;
  @override
  final String? company;
  @override
  final int? status_contact;
  @override
  final int? is_recondition;
  @override
  final bool? is_exhibitor;
  @override
  final String? company_info;

  @override
  String toString() {
    return 'Exhibitor(id: $id, api_token: $api_token, full_name: $full_name, profile: $profile, email: $email, phone: $phone, position: $position, company: $company, status_contact: $status_contact, is_recondition: $is_recondition, is_exhibitor: $is_exhibitor, company_info: $company_info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExhibitorImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.api_token, api_token) ||
                other.api_token == api_token) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.status_contact, status_contact) ||
                other.status_contact == status_contact) &&
            (identical(other.is_recondition, is_recondition) ||
                other.is_recondition == is_recondition) &&
            (identical(other.is_exhibitor, is_exhibitor) ||
                other.is_exhibitor == is_exhibitor) &&
            (identical(other.company_info, company_info) ||
                other.company_info == company_info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      api_token,
      full_name,
      profile,
      email,
      phone,
      position,
      company,
      status_contact,
      is_recondition,
      is_exhibitor,
      company_info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExhibitorImplCopyWith<_$ExhibitorImpl> get copyWith =>
      __$$ExhibitorImplCopyWithImpl<_$ExhibitorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExhibitorImplToJson(
      this,
    );
  }
}

abstract class _Exhibitor extends Exhibitor {
  const factory _Exhibitor(
      {final int? id,
      final String? api_token,
      final String? full_name,
      final String? profile,
      final String? email,
      final String? phone,
      final String? position,
      final String? company,
      final int? status_contact,
      final int? is_recondition,
      final bool? is_exhibitor,
      final String? company_info}) = _$ExhibitorImpl;
  const _Exhibitor._() : super._();

  factory _Exhibitor.fromJson(Map<String, dynamic> json) =
      _$ExhibitorImpl.fromJson;

  @override
  int? get id;
  @override
  String? get api_token;
  @override
  String? get full_name;
  @override
  String? get profile;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  String? get position;
  @override
  String? get company;
  @override
  int? get status_contact;
  @override
  int? get is_recondition;
  @override
  bool? get is_exhibitor;
  @override
  String? get company_info;
  @override
  @JsonKey(ignore: true)
  _$$ExhibitorImplCopyWith<_$ExhibitorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Attendee _$AttendeeFromJson(Map<String, dynamic> json) {
  return _Attendee.fromJson(json);
}

/// @nodoc
mixin _$Attendee {
  int? get id => throw _privateConstructorUsedError;
  String? get api_token => throw _privateConstructorUsedError;
  String? get full_name => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  int? get status_contact => throw _privateConstructorUsedError;
  int? get is_recondition => throw _privateConstructorUsedError;
  bool? get is_exhibitor => throw _privateConstructorUsedError;
  String? get company_info => throw _privateConstructorUsedError;
  List<UserCategory>? get user_category => throw _privateConstructorUsedError;
  List<UserInterest>? get user_interest => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendeeCopyWith<Attendee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendeeCopyWith<$Res> {
  factory $AttendeeCopyWith(Attendee value, $Res Function(Attendee) then) =
      _$AttendeeCopyWithImpl<$Res, Attendee>;
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      String? full_name,
      String? profile,
      String? phone,
      String? position,
      String? company,
      String? email,
      int? status_contact,
      int? is_recondition,
      bool? is_exhibitor,
      String? company_info,
      List<UserCategory>? user_category,
      List<UserInterest>? user_interest});
}

/// @nodoc
class _$AttendeeCopyWithImpl<$Res, $Val extends Attendee>
    implements $AttendeeCopyWith<$Res> {
  _$AttendeeCopyWithImpl(this._value, this._then);

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
    Object? profile = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? status_contact = freezed,
    Object? is_recondition = freezed,
    Object? is_exhibitor = freezed,
    Object? company_info = freezed,
    Object? user_category = freezed,
    Object? user_interest = freezed,
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
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status_contact: freezed == status_contact
          ? _value.status_contact
          : status_contact // ignore: cast_nullable_to_non_nullable
              as int?,
      is_recondition: freezed == is_recondition
          ? _value.is_recondition
          : is_recondition // ignore: cast_nullable_to_non_nullable
              as int?,
      is_exhibitor: freezed == is_exhibitor
          ? _value.is_exhibitor
          : is_exhibitor // ignore: cast_nullable_to_non_nullable
              as bool?,
      company_info: freezed == company_info
          ? _value.company_info
          : company_info // ignore: cast_nullable_to_non_nullable
              as String?,
      user_category: freezed == user_category
          ? _value.user_category
          : user_category // ignore: cast_nullable_to_non_nullable
              as List<UserCategory>?,
      user_interest: freezed == user_interest
          ? _value.user_interest
          : user_interest // ignore: cast_nullable_to_non_nullable
              as List<UserInterest>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttendeeImplCopyWith<$Res>
    implements $AttendeeCopyWith<$Res> {
  factory _$$AttendeeImplCopyWith(
          _$AttendeeImpl value, $Res Function(_$AttendeeImpl) then) =
      __$$AttendeeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? api_token,
      String? full_name,
      String? profile,
      String? phone,
      String? position,
      String? company,
      String? email,
      int? status_contact,
      int? is_recondition,
      bool? is_exhibitor,
      String? company_info,
      List<UserCategory>? user_category,
      List<UserInterest>? user_interest});
}

/// @nodoc
class __$$AttendeeImplCopyWithImpl<$Res>
    extends _$AttendeeCopyWithImpl<$Res, _$AttendeeImpl>
    implements _$$AttendeeImplCopyWith<$Res> {
  __$$AttendeeImplCopyWithImpl(
      _$AttendeeImpl _value, $Res Function(_$AttendeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? api_token = freezed,
    Object? full_name = freezed,
    Object? profile = freezed,
    Object? phone = freezed,
    Object? position = freezed,
    Object? company = freezed,
    Object? email = freezed,
    Object? status_contact = freezed,
    Object? is_recondition = freezed,
    Object? is_exhibitor = freezed,
    Object? company_info = freezed,
    Object? user_category = freezed,
    Object? user_interest = freezed,
  }) {
    return _then(_$AttendeeImpl(
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
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status_contact: freezed == status_contact
          ? _value.status_contact
          : status_contact // ignore: cast_nullable_to_non_nullable
              as int?,
      is_recondition: freezed == is_recondition
          ? _value.is_recondition
          : is_recondition // ignore: cast_nullable_to_non_nullable
              as int?,
      is_exhibitor: freezed == is_exhibitor
          ? _value.is_exhibitor
          : is_exhibitor // ignore: cast_nullable_to_non_nullable
              as bool?,
      company_info: freezed == company_info
          ? _value.company_info
          : company_info // ignore: cast_nullable_to_non_nullable
              as String?,
      user_category: freezed == user_category
          ? _value._user_category
          : user_category // ignore: cast_nullable_to_non_nullable
              as List<UserCategory>?,
      user_interest: freezed == user_interest
          ? _value._user_interest
          : user_interest // ignore: cast_nullable_to_non_nullable
              as List<UserInterest>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttendeeImpl implements _Attendee {
  const _$AttendeeImpl(
      {this.id,
      this.api_token,
      this.full_name = '',
      this.profile,
      this.phone = '',
      this.position = '',
      this.company = '',
      this.email = '',
      this.status_contact,
      this.is_recondition,
      this.is_exhibitor,
      this.company_info = '',
      final List<UserCategory>? user_category = const [],
      final List<UserInterest>? user_interest = const []})
      : _user_category = user_category,
        _user_interest = user_interest;

  factory _$AttendeeImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttendeeImplFromJson(json);

  @override
  final int? id;
  @override
  final String? api_token;
  @override
  @JsonKey()
  final String? full_name;
  @override
  final String? profile;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey()
  final String? position;
  @override
  @JsonKey()
  final String? company;
  @override
  @JsonKey()
  final String? email;
  @override
  final int? status_contact;
  @override
  final int? is_recondition;
  @override
  final bool? is_exhibitor;
  @override
  @JsonKey()
  final String? company_info;
  final List<UserCategory>? _user_category;
  @override
  @JsonKey()
  List<UserCategory>? get user_category {
    final value = _user_category;
    if (value == null) return null;
    if (_user_category is EqualUnmodifiableListView) return _user_category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<UserInterest>? _user_interest;
  @override
  @JsonKey()
  List<UserInterest>? get user_interest {
    final value = _user_interest;
    if (value == null) return null;
    if (_user_interest is EqualUnmodifiableListView) return _user_interest;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Attendee(id: $id, api_token: $api_token, full_name: $full_name, profile: $profile, phone: $phone, position: $position, company: $company, email: $email, status_contact: $status_contact, is_recondition: $is_recondition, is_exhibitor: $is_exhibitor, company_info: $company_info, user_category: $user_category, user_interest: $user_interest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttendeeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.api_token, api_token) ||
                other.api_token == api_token) &&
            (identical(other.full_name, full_name) ||
                other.full_name == full_name) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.status_contact, status_contact) ||
                other.status_contact == status_contact) &&
            (identical(other.is_recondition, is_recondition) ||
                other.is_recondition == is_recondition) &&
            (identical(other.is_exhibitor, is_exhibitor) ||
                other.is_exhibitor == is_exhibitor) &&
            (identical(other.company_info, company_info) ||
                other.company_info == company_info) &&
            const DeepCollectionEquality()
                .equals(other._user_category, _user_category) &&
            const DeepCollectionEquality()
                .equals(other._user_interest, _user_interest));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      api_token,
      full_name,
      profile,
      phone,
      position,
      company,
      email,
      status_contact,
      is_recondition,
      is_exhibitor,
      company_info,
      const DeepCollectionEquality().hash(_user_category),
      const DeepCollectionEquality().hash(_user_interest));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttendeeImplCopyWith<_$AttendeeImpl> get copyWith =>
      __$$AttendeeImplCopyWithImpl<_$AttendeeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttendeeImplToJson(
      this,
    );
  }
}

abstract class _Attendee implements Attendee {
  const factory _Attendee(
      {final int? id,
      final String? api_token,
      final String? full_name,
      final String? profile,
      final String? phone,
      final String? position,
      final String? company,
      final String? email,
      final int? status_contact,
      final int? is_recondition,
      final bool? is_exhibitor,
      final String? company_info,
      final List<UserCategory>? user_category,
      final List<UserInterest>? user_interest}) = _$AttendeeImpl;

  factory _Attendee.fromJson(Map<String, dynamic> json) =
      _$AttendeeImpl.fromJson;

  @override
  int? get id;
  @override
  String? get api_token;
  @override
  String? get full_name;
  @override
  String? get profile;
  @override
  String? get phone;
  @override
  String? get position;
  @override
  String? get company;
  @override
  String? get email;
  @override
  int? get status_contact;
  @override
  int? get is_recondition;
  @override
  bool? get is_exhibitor;
  @override
  String? get company_info;
  @override
  List<UserCategory>? get user_category;
  @override
  List<UserInterest>? get user_interest;
  @override
  @JsonKey(ignore: true)
  _$$AttendeeImplCopyWith<_$AttendeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  Attendee? get attendee => throw _privateConstructorUsedError;
  Exhibitor? get exhibitor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call({Attendee? attendee, Exhibitor? exhibitor});

  $AttendeeCopyWith<$Res>? get attendee;
  $ExhibitorCopyWith<$Res>? get exhibitor;
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendee = freezed,
    Object? exhibitor = freezed,
  }) {
    return _then(_value.copyWith(
      attendee: freezed == attendee
          ? _value.attendee
          : attendee // ignore: cast_nullable_to_non_nullable
              as Attendee?,
      exhibitor: freezed == exhibitor
          ? _value.exhibitor
          : exhibitor // ignore: cast_nullable_to_non_nullable
              as Exhibitor?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttendeeCopyWith<$Res>? get attendee {
    if (_value.attendee == null) {
      return null;
    }

    return $AttendeeCopyWith<$Res>(_value.attendee!, (value) {
      return _then(_value.copyWith(attendee: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExhibitorCopyWith<$Res>? get exhibitor {
    if (_value.exhibitor == null) {
      return null;
    }

    return $ExhibitorCopyWith<$Res>(_value.exhibitor!, (value) {
      return _then(_value.copyWith(exhibitor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Attendee? attendee, Exhibitor? exhibitor});

  @override
  $AttendeeCopyWith<$Res>? get attendee;
  @override
  $ExhibitorCopyWith<$Res>? get exhibitor;
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attendee = freezed,
    Object? exhibitor = freezed,
  }) {
    return _then(_$UserDataImpl(
      attendee: freezed == attendee
          ? _value.attendee
          : attendee // ignore: cast_nullable_to_non_nullable
              as Attendee?,
      exhibitor: freezed == exhibitor
          ? _value.exhibitor
          : exhibitor // ignore: cast_nullable_to_non_nullable
              as Exhibitor?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl({this.attendee, this.exhibitor});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final Attendee? attendee;
  @override
  final Exhibitor? exhibitor;

  @override
  String toString() {
    return 'UserData(attendee: $attendee, exhibitor: $exhibitor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.attendee, attendee) ||
                other.attendee == attendee) &&
            (identical(other.exhibitor, exhibitor) ||
                other.exhibitor == exhibitor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, attendee, exhibitor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {final Attendee? attendee, final Exhibitor? exhibitor}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  Attendee? get attendee;
  @override
  Exhibitor? get exhibitor;
  @override
  @JsonKey(ignore: true)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
