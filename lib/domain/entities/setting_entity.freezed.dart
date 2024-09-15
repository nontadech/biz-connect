// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Setting _$SettingFromJson(Map<String, dynamic> json) {
  return _Setting.fromJson(json);
}

/// @nodoc
mixin _$Setting {
  LangType get language => throw _privateConstructorUsedError;
  bool get isNotification => throw _privateConstructorUsedError;
  String get apnsToken => throw _privateConstructorUsedError;
  bool get photoAccessDenied => throw _privateConstructorUsedError;
  bool get cameraAccessDenied => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingCopyWith<Setting> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingCopyWith<$Res> {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) then) =
      _$SettingCopyWithImpl<$Res, Setting>;
  @useResult
  $Res call(
      {LangType language,
      bool isNotification,
      String apnsToken,
      bool photoAccessDenied,
      bool cameraAccessDenied});
}

/// @nodoc
class _$SettingCopyWithImpl<$Res, $Val extends Setting>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? isNotification = null,
    Object? apnsToken = null,
    Object? photoAccessDenied = null,
    Object? cameraAccessDenied = null,
  }) {
    return _then(_value.copyWith(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LangType,
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      apnsToken: null == apnsToken
          ? _value.apnsToken
          : apnsToken // ignore: cast_nullable_to_non_nullable
              as String,
      photoAccessDenied: null == photoAccessDenied
          ? _value.photoAccessDenied
          : photoAccessDenied // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraAccessDenied: null == cameraAccessDenied
          ? _value.cameraAccessDenied
          : cameraAccessDenied // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingImplCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$$SettingImplCopyWith(
          _$SettingImpl value, $Res Function(_$SettingImpl) then) =
      __$$SettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LangType language,
      bool isNotification,
      String apnsToken,
      bool photoAccessDenied,
      bool cameraAccessDenied});
}

/// @nodoc
class __$$SettingImplCopyWithImpl<$Res>
    extends _$SettingCopyWithImpl<$Res, _$SettingImpl>
    implements _$$SettingImplCopyWith<$Res> {
  __$$SettingImplCopyWithImpl(
      _$SettingImpl _value, $Res Function(_$SettingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? language = null,
    Object? isNotification = null,
    Object? apnsToken = null,
    Object? photoAccessDenied = null,
    Object? cameraAccessDenied = null,
  }) {
    return _then(_$SettingImpl(
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LangType,
      isNotification: null == isNotification
          ? _value.isNotification
          : isNotification // ignore: cast_nullable_to_non_nullable
              as bool,
      apnsToken: null == apnsToken
          ? _value.apnsToken
          : apnsToken // ignore: cast_nullable_to_non_nullable
              as String,
      photoAccessDenied: null == photoAccessDenied
          ? _value.photoAccessDenied
          : photoAccessDenied // ignore: cast_nullable_to_non_nullable
              as bool,
      cameraAccessDenied: null == cameraAccessDenied
          ? _value.cameraAccessDenied
          : cameraAccessDenied // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingImpl implements _Setting {
  _$SettingImpl(
      {this.language = LangType.en,
      this.isNotification = false,
      this.apnsToken = '',
      this.photoAccessDenied = false,
      this.cameraAccessDenied = false});

  factory _$SettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingImplFromJson(json);

  @override
  @JsonKey()
  final LangType language;
  @override
  @JsonKey()
  final bool isNotification;
  @override
  @JsonKey()
  final String apnsToken;
  @override
  @JsonKey()
  final bool photoAccessDenied;
  @override
  @JsonKey()
  final bool cameraAccessDenied;

  @override
  String toString() {
    return 'Setting(language: $language, isNotification: $isNotification, apnsToken: $apnsToken, photoAccessDenied: $photoAccessDenied, cameraAccessDenied: $cameraAccessDenied)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingImpl &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.isNotification, isNotification) ||
                other.isNotification == isNotification) &&
            (identical(other.apnsToken, apnsToken) ||
                other.apnsToken == apnsToken) &&
            (identical(other.photoAccessDenied, photoAccessDenied) ||
                other.photoAccessDenied == photoAccessDenied) &&
            (identical(other.cameraAccessDenied, cameraAccessDenied) ||
                other.cameraAccessDenied == cameraAccessDenied));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, language, isNotification,
      apnsToken, photoAccessDenied, cameraAccessDenied);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      __$$SettingImplCopyWithImpl<_$SettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingImplToJson(
      this,
    );
  }
}

abstract class _Setting implements Setting {
  factory _Setting(
      {final LangType language,
      final bool isNotification,
      final String apnsToken,
      final bool photoAccessDenied,
      final bool cameraAccessDenied}) = _$SettingImpl;

  factory _Setting.fromJson(Map<String, dynamic> json) = _$SettingImpl.fromJson;

  @override
  LangType get language;
  @override
  bool get isNotification;
  @override
  String get apnsToken;
  @override
  bool get photoAccessDenied;
  @override
  bool get cameraAccessDenied;
  @override
  @JsonKey(ignore: true)
  _$$SettingImplCopyWith<_$SettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
