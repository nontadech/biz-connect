// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'master_data_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InterestData _$InterestDataFromJson(Map<String, dynamic> json) {
  return _InterestData.fromJson(json);
}

/// @nodoc
mixin _$InterestData {
  int? get interest_id => throw _privateConstructorUsedError;
  String? get interest_name => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InterestDataCopyWith<InterestData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InterestDataCopyWith<$Res> {
  factory $InterestDataCopyWith(
          InterestData value, $Res Function(InterestData) then) =
      _$InterestDataCopyWithImpl<$Res, InterestData>;
  @useResult
  $Res call({int? interest_id, String? interest_name, bool isSelected});
}

/// @nodoc
class _$InterestDataCopyWithImpl<$Res, $Val extends InterestData>
    implements $InterestDataCopyWith<$Res> {
  _$InterestDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interest_id = freezed,
    Object? interest_name = freezed,
    Object? isSelected = null,
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InterestDataImplCopyWith<$Res>
    implements $InterestDataCopyWith<$Res> {
  factory _$$InterestDataImplCopyWith(
          _$InterestDataImpl value, $Res Function(_$InterestDataImpl) then) =
      __$$InterestDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? interest_id, String? interest_name, bool isSelected});
}

/// @nodoc
class __$$InterestDataImplCopyWithImpl<$Res>
    extends _$InterestDataCopyWithImpl<$Res, _$InterestDataImpl>
    implements _$$InterestDataImplCopyWith<$Res> {
  __$$InterestDataImplCopyWithImpl(
      _$InterestDataImpl _value, $Res Function(_$InterestDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? interest_id = freezed,
    Object? interest_name = freezed,
    Object? isSelected = null,
  }) {
    return _then(_$InterestDataImpl(
      interest_id: freezed == interest_id
          ? _value.interest_id
          : interest_id // ignore: cast_nullable_to_non_nullable
              as int?,
      interest_name: freezed == interest_name
          ? _value.interest_name
          : interest_name // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InterestDataImpl implements _InterestData {
  const _$InterestDataImpl(
      {this.interest_id, this.interest_name, this.isSelected = false});

  factory _$InterestDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$InterestDataImplFromJson(json);

  @override
  final int? interest_id;
  @override
  final String? interest_name;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'InterestData(interest_id: $interest_id, interest_name: $interest_name, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InterestDataImpl &&
            (identical(other.interest_id, interest_id) ||
                other.interest_id == interest_id) &&
            (identical(other.interest_name, interest_name) ||
                other.interest_name == interest_name) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, interest_id, interest_name, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InterestDataImplCopyWith<_$InterestDataImpl> get copyWith =>
      __$$InterestDataImplCopyWithImpl<_$InterestDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InterestDataImplToJson(
      this,
    );
  }
}

abstract class _InterestData implements InterestData {
  const factory _InterestData(
      {final int? interest_id,
      final String? interest_name,
      final bool isSelected}) = _$InterestDataImpl;

  factory _InterestData.fromJson(Map<String, dynamic> json) =
      _$InterestDataImpl.fromJson;

  @override
  int? get interest_id;
  @override
  String? get interest_name;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$InterestDataImplCopyWith<_$InterestDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) {
  return _CategoryData.fromJson(json);
}

/// @nodoc
mixin _$CategoryData {
  int? get cate_id => throw _privateConstructorUsedError;
  String? get cate_name => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDataCopyWith<CategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDataCopyWith<$Res> {
  factory $CategoryDataCopyWith(
          CategoryData value, $Res Function(CategoryData) then) =
      _$CategoryDataCopyWithImpl<$Res, CategoryData>;
  @useResult
  $Res call({int? cate_id, String? cate_name, bool isSelected});
}

/// @nodoc
class _$CategoryDataCopyWithImpl<$Res, $Val extends CategoryData>
    implements $CategoryDataCopyWith<$Res> {
  _$CategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cate_id = freezed,
    Object? cate_name = freezed,
    Object? isSelected = null,
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
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryDataImplCopyWith<$Res>
    implements $CategoryDataCopyWith<$Res> {
  factory _$$CategoryDataImplCopyWith(
          _$CategoryDataImpl value, $Res Function(_$CategoryDataImpl) then) =
      __$$CategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? cate_id, String? cate_name, bool isSelected});
}

/// @nodoc
class __$$CategoryDataImplCopyWithImpl<$Res>
    extends _$CategoryDataCopyWithImpl<$Res, _$CategoryDataImpl>
    implements _$$CategoryDataImplCopyWith<$Res> {
  __$$CategoryDataImplCopyWithImpl(
      _$CategoryDataImpl _value, $Res Function(_$CategoryDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cate_id = freezed,
    Object? cate_name = freezed,
    Object? isSelected = null,
  }) {
    return _then(_$CategoryDataImpl(
      cate_id: freezed == cate_id
          ? _value.cate_id
          : cate_id // ignore: cast_nullable_to_non_nullable
              as int?,
      cate_name: freezed == cate_name
          ? _value.cate_name
          : cate_name // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryDataImpl implements _CategoryData {
  const _$CategoryDataImpl(
      {this.cate_id, this.cate_name, this.isSelected = false});

  factory _$CategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryDataImplFromJson(json);

  @override
  final int? cate_id;
  @override
  final String? cate_name;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'CategoryData(cate_id: $cate_id, cate_name: $cate_name, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryDataImpl &&
            (identical(other.cate_id, cate_id) || other.cate_id == cate_id) &&
            (identical(other.cate_name, cate_name) ||
                other.cate_name == cate_name) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cate_id, cate_name, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryDataImplCopyWith<_$CategoryDataImpl> get copyWith =>
      __$$CategoryDataImplCopyWithImpl<_$CategoryDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryDataImplToJson(
      this,
    );
  }
}

abstract class _CategoryData implements CategoryData {
  const factory _CategoryData(
      {final int? cate_id,
      final String? cate_name,
      final bool isSelected}) = _$CategoryDataImpl;

  factory _CategoryData.fromJson(Map<String, dynamic> json) =
      _$CategoryDataImpl.fromJson;

  @override
  int? get cate_id;
  @override
  String? get cate_name;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$CategoryDataImplCopyWith<_$CategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
