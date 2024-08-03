// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qr_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QR _$QRFromJson(Map<String, dynamic> json) {
  return _QR.fromJson(json);
}

/// @nodoc
mixin _$QR {
  String? get my_qr_code_png_base64 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QRCopyWith<QR> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRCopyWith<$Res> {
  factory $QRCopyWith(QR value, $Res Function(QR) then) =
      _$QRCopyWithImpl<$Res, QR>;
  @useResult
  $Res call({String? my_qr_code_png_base64});
}

/// @nodoc
class _$QRCopyWithImpl<$Res, $Val extends QR> implements $QRCopyWith<$Res> {
  _$QRCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? my_qr_code_png_base64 = freezed,
  }) {
    return _then(_value.copyWith(
      my_qr_code_png_base64: freezed == my_qr_code_png_base64
          ? _value.my_qr_code_png_base64
          : my_qr_code_png_base64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QRImplCopyWith<$Res> implements $QRCopyWith<$Res> {
  factory _$$QRImplCopyWith(_$QRImpl value, $Res Function(_$QRImpl) then) =
      __$$QRImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? my_qr_code_png_base64});
}

/// @nodoc
class __$$QRImplCopyWithImpl<$Res> extends _$QRCopyWithImpl<$Res, _$QRImpl>
    implements _$$QRImplCopyWith<$Res> {
  __$$QRImplCopyWithImpl(_$QRImpl _value, $Res Function(_$QRImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? my_qr_code_png_base64 = freezed,
  }) {
    return _then(_$QRImpl(
      my_qr_code_png_base64: freezed == my_qr_code_png_base64
          ? _value.my_qr_code_png_base64
          : my_qr_code_png_base64 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QRImpl implements _QR {
  const _$QRImpl({this.my_qr_code_png_base64});

  factory _$QRImpl.fromJson(Map<String, dynamic> json) =>
      _$$QRImplFromJson(json);

  @override
  final String? my_qr_code_png_base64;

  @override
  String toString() {
    return 'QR(my_qr_code_png_base64: $my_qr_code_png_base64)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRImpl &&
            (identical(other.my_qr_code_png_base64, my_qr_code_png_base64) ||
                other.my_qr_code_png_base64 == my_qr_code_png_base64));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, my_qr_code_png_base64);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRImplCopyWith<_$QRImpl> get copyWith =>
      __$$QRImplCopyWithImpl<_$QRImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QRImplToJson(
      this,
    );
  }
}

abstract class _QR implements QR {
  const factory _QR({final String? my_qr_code_png_base64}) = _$QRImpl;

  factory _QR.fromJson(Map<String, dynamic> json) = _$QRImpl.fromJson;

  @override
  String? get my_qr_code_png_base64;
  @override
  @JsonKey(ignore: true)
  _$$QRImplCopyWith<_$QRImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QRContact _$QRContactFromJson(Map<String, dynamic> json) {
  return _QRContact.fromJson(json);
}

/// @nodoc
mixin _$QRContact {
  QRContactData? get contact_data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QRContactCopyWith<QRContact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRContactCopyWith<$Res> {
  factory $QRContactCopyWith(QRContact value, $Res Function(QRContact) then) =
      _$QRContactCopyWithImpl<$Res, QRContact>;
  @useResult
  $Res call({QRContactData? contact_data});

  $QRContactDataCopyWith<$Res>? get contact_data;
}

/// @nodoc
class _$QRContactCopyWithImpl<$Res, $Val extends QRContact>
    implements $QRContactCopyWith<$Res> {
  _$QRContactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact_data = freezed,
  }) {
    return _then(_value.copyWith(
      contact_data: freezed == contact_data
          ? _value.contact_data
          : contact_data // ignore: cast_nullable_to_non_nullable
              as QRContactData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QRContactDataCopyWith<$Res>? get contact_data {
    if (_value.contact_data == null) {
      return null;
    }

    return $QRContactDataCopyWith<$Res>(_value.contact_data!, (value) {
      return _then(_value.copyWith(contact_data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QRContactImplCopyWith<$Res>
    implements $QRContactCopyWith<$Res> {
  factory _$$QRContactImplCopyWith(
          _$QRContactImpl value, $Res Function(_$QRContactImpl) then) =
      __$$QRContactImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({QRContactData? contact_data});

  @override
  $QRContactDataCopyWith<$Res>? get contact_data;
}

/// @nodoc
class __$$QRContactImplCopyWithImpl<$Res>
    extends _$QRContactCopyWithImpl<$Res, _$QRContactImpl>
    implements _$$QRContactImplCopyWith<$Res> {
  __$$QRContactImplCopyWithImpl(
      _$QRContactImpl _value, $Res Function(_$QRContactImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contact_data = freezed,
  }) {
    return _then(_$QRContactImpl(
      contact_data: freezed == contact_data
          ? _value.contact_data
          : contact_data // ignore: cast_nullable_to_non_nullable
              as QRContactData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QRContactImpl implements _QRContact {
  const _$QRContactImpl({this.contact_data});

  factory _$QRContactImpl.fromJson(Map<String, dynamic> json) =>
      _$$QRContactImplFromJson(json);

  @override
  final QRContactData? contact_data;

  @override
  String toString() {
    return 'QRContact(contact_data: $contact_data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRContactImpl &&
            (identical(other.contact_data, contact_data) ||
                other.contact_data == contact_data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, contact_data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRContactImplCopyWith<_$QRContactImpl> get copyWith =>
      __$$QRContactImplCopyWithImpl<_$QRContactImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QRContactImplToJson(
      this,
    );
  }
}

abstract class _QRContact implements QRContact {
  const factory _QRContact({final QRContactData? contact_data}) =
      _$QRContactImpl;

  factory _QRContact.fromJson(Map<String, dynamic> json) =
      _$QRContactImpl.fromJson;

  @override
  QRContactData? get contact_data;
  @override
  @JsonKey(ignore: true)
  _$$QRContactImplCopyWith<_$QRContactImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

QRPrivateEvent _$QRPrivateEventFromJson(Map<String, dynamic> json) {
  return _QRPrivateEvent.fromJson(json);
}

/// @nodoc
mixin _$QRPrivateEvent {
  List<QRPrivateEventData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QRPrivateEventCopyWith<QRPrivateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRPrivateEventCopyWith<$Res> {
  factory $QRPrivateEventCopyWith(
          QRPrivateEvent value, $Res Function(QRPrivateEvent) then) =
      _$QRPrivateEventCopyWithImpl<$Res, QRPrivateEvent>;
  @useResult
  $Res call({List<QRPrivateEventData>? data});
}

/// @nodoc
class _$QRPrivateEventCopyWithImpl<$Res, $Val extends QRPrivateEvent>
    implements $QRPrivateEventCopyWith<$Res> {
  _$QRPrivateEventCopyWithImpl(this._value, this._then);

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
              as List<QRPrivateEventData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QRPrivateEventImplCopyWith<$Res>
    implements $QRPrivateEventCopyWith<$Res> {
  factory _$$QRPrivateEventImplCopyWith(_$QRPrivateEventImpl value,
          $Res Function(_$QRPrivateEventImpl) then) =
      __$$QRPrivateEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<QRPrivateEventData>? data});
}

/// @nodoc
class __$$QRPrivateEventImplCopyWithImpl<$Res>
    extends _$QRPrivateEventCopyWithImpl<$Res, _$QRPrivateEventImpl>
    implements _$$QRPrivateEventImplCopyWith<$Res> {
  __$$QRPrivateEventImplCopyWithImpl(
      _$QRPrivateEventImpl _value, $Res Function(_$QRPrivateEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$QRPrivateEventImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<QRPrivateEventData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QRPrivateEventImpl implements _QRPrivateEvent {
  const _$QRPrivateEventImpl({final List<QRPrivateEventData>? data})
      : _data = data;

  factory _$QRPrivateEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$QRPrivateEventImplFromJson(json);

  final List<QRPrivateEventData>? _data;
  @override
  List<QRPrivateEventData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QRPrivateEvent(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRPrivateEventImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRPrivateEventImplCopyWith<_$QRPrivateEventImpl> get copyWith =>
      __$$QRPrivateEventImplCopyWithImpl<_$QRPrivateEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QRPrivateEventImplToJson(
      this,
    );
  }
}

abstract class _QRPrivateEvent implements QRPrivateEvent {
  const factory _QRPrivateEvent({final List<QRPrivateEventData>? data}) =
      _$QRPrivateEventImpl;

  factory _QRPrivateEvent.fromJson(Map<String, dynamic> json) =
      _$QRPrivateEventImpl.fromJson;

  @override
  List<QRPrivateEventData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$QRPrivateEventImplCopyWith<_$QRPrivateEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
