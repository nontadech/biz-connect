// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'policy_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Policy _$PolicyFromJson(Map<String, dynamic> json) {
  return _Policy.fromJson(json);
}

/// @nodoc
mixin _$Policy {
  PolicyData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyCopyWith<Policy> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) then) =
      _$PolicyCopyWithImpl<$Res, Policy>;
  @useResult
  $Res call({PolicyData? data});

  $PolicyDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res, $Val extends Policy>
    implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._value, this._then);

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
              as PolicyData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolicyDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PolicyDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PolicyImplCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$$PolicyImplCopyWith(
          _$PolicyImpl value, $Res Function(_$PolicyImpl) then) =
      __$$PolicyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PolicyData? data});

  @override
  $PolicyDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PolicyImplCopyWithImpl<$Res>
    extends _$PolicyCopyWithImpl<$Res, _$PolicyImpl>
    implements _$$PolicyImplCopyWith<$Res> {
  __$$PolicyImplCopyWithImpl(
      _$PolicyImpl _value, $Res Function(_$PolicyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PolicyImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PolicyData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyImpl implements _Policy {
  const _$PolicyImpl({this.data});

  factory _$PolicyImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyImplFromJson(json);

  @override
  final PolicyData? data;

  @override
  String toString() {
    return 'Policy(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      __$$PolicyImplCopyWithImpl<_$PolicyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyImplToJson(
      this,
    );
  }
}

abstract class _Policy implements Policy {
  const factory _Policy({final PolicyData? data}) = _$PolicyImpl;

  factory _Policy.fromJson(Map<String, dynamic> json) = _$PolicyImpl.fromJson;

  @override
  PolicyData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PolicyImplCopyWith<_$PolicyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicyDetail _$PolicyDetailFromJson(Map<String, dynamic> json) {
  return _PolicyDetail.fromJson(json);
}

/// @nodoc
mixin _$PolicyDetail {
  PolicyDetailData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicyDetailCopyWith<PolicyDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicyDetailCopyWith<$Res> {
  factory $PolicyDetailCopyWith(
          PolicyDetail value, $Res Function(PolicyDetail) then) =
      _$PolicyDetailCopyWithImpl<$Res, PolicyDetail>;
  @useResult
  $Res call({PolicyDetailData? data});

  $PolicyDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PolicyDetailCopyWithImpl<$Res, $Val extends PolicyDetail>
    implements $PolicyDetailCopyWith<$Res> {
  _$PolicyDetailCopyWithImpl(this._value, this._then);

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
              as PolicyDetailData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolicyDetailDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PolicyDetailDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PolicyDetailImplCopyWith<$Res>
    implements $PolicyDetailCopyWith<$Res> {
  factory _$$PolicyDetailImplCopyWith(
          _$PolicyDetailImpl value, $Res Function(_$PolicyDetailImpl) then) =
      __$$PolicyDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PolicyDetailData? data});

  @override
  $PolicyDetailDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PolicyDetailImplCopyWithImpl<$Res>
    extends _$PolicyDetailCopyWithImpl<$Res, _$PolicyDetailImpl>
    implements _$$PolicyDetailImplCopyWith<$Res> {
  __$$PolicyDetailImplCopyWithImpl(
      _$PolicyDetailImpl _value, $Res Function(_$PolicyDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PolicyDetailImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PolicyDetailData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicyDetailImpl implements _PolicyDetail {
  const _$PolicyDetailImpl({this.data});

  factory _$PolicyDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicyDetailImplFromJson(json);

  @override
  final PolicyDetailData? data;

  @override
  String toString() {
    return 'PolicyDetail(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicyDetailImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicyDetailImplCopyWith<_$PolicyDetailImpl> get copyWith =>
      __$$PolicyDetailImplCopyWithImpl<_$PolicyDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicyDetailImplToJson(
      this,
    );
  }
}

abstract class _PolicyDetail implements PolicyDetail {
  const factory _PolicyDetail({final PolicyDetailData? data}) =
      _$PolicyDetailImpl;

  factory _PolicyDetail.fromJson(Map<String, dynamic> json) =
      _$PolicyDetailImpl.fromJson;

  @override
  PolicyDetailData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PolicyDetailImplCopyWith<_$PolicyDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PolicySave _$PolicySaveFromJson(Map<String, dynamic> json) {
  return _PolicySave.fromJson(json);
}

/// @nodoc
mixin _$PolicySave {
  PolicySaveData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PolicySaveCopyWith<PolicySave> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PolicySaveCopyWith<$Res> {
  factory $PolicySaveCopyWith(
          PolicySave value, $Res Function(PolicySave) then) =
      _$PolicySaveCopyWithImpl<$Res, PolicySave>;
  @useResult
  $Res call({PolicySaveData? data});

  $PolicySaveDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$PolicySaveCopyWithImpl<$Res, $Val extends PolicySave>
    implements $PolicySaveCopyWith<$Res> {
  _$PolicySaveCopyWithImpl(this._value, this._then);

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
              as PolicySaveData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PolicySaveDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PolicySaveDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PolicySaveImplCopyWith<$Res>
    implements $PolicySaveCopyWith<$Res> {
  factory _$$PolicySaveImplCopyWith(
          _$PolicySaveImpl value, $Res Function(_$PolicySaveImpl) then) =
      __$$PolicySaveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PolicySaveData? data});

  @override
  $PolicySaveDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PolicySaveImplCopyWithImpl<$Res>
    extends _$PolicySaveCopyWithImpl<$Res, _$PolicySaveImpl>
    implements _$$PolicySaveImplCopyWith<$Res> {
  __$$PolicySaveImplCopyWithImpl(
      _$PolicySaveImpl _value, $Res Function(_$PolicySaveImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PolicySaveImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PolicySaveData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PolicySaveImpl implements _PolicySave {
  const _$PolicySaveImpl({this.data});

  factory _$PolicySaveImpl.fromJson(Map<String, dynamic> json) =>
      _$$PolicySaveImplFromJson(json);

  @override
  final PolicySaveData? data;

  @override
  String toString() {
    return 'PolicySave(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PolicySaveImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PolicySaveImplCopyWith<_$PolicySaveImpl> get copyWith =>
      __$$PolicySaveImplCopyWithImpl<_$PolicySaveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PolicySaveImplToJson(
      this,
    );
  }
}

abstract class _PolicySave implements PolicySave {
  const factory _PolicySave({final PolicySaveData? data}) = _$PolicySaveImpl;

  factory _PolicySave.fromJson(Map<String, dynamic> json) =
      _$PolicySaveImpl.fromJson;

  @override
  PolicySaveData? get data;
  @override
  @JsonKey(ignore: true)
  _$$PolicySaveImplCopyWith<_$PolicySaveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
