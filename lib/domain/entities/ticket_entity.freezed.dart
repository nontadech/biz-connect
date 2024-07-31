// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TicketData _$TicketDataFromJson(Map<String, dynamic> json) {
  return _TicketData.fromJson(json);
}

/// @nodoc
mixin _$TicketData {
  int? get ticket_id => throw _privateConstructorUsedError;
  String? get ticket_type => throw _privateConstructorUsedError;
  String? get private_ref => throw _privateConstructorUsedError;
  String? get fullname => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get tel => throw _privateConstructorUsedError;
  String? get image_display => throw _privateConstructorUsedError;
  String? get images_event => throw _privateConstructorUsedError;
  int? get event_id => throw _privateConstructorUsedError;
  String? get event_title => throw _privateConstructorUsedError;
  String? get event_detail => throw _privateConstructorUsedError;
  String? get venue_name => throw _privateConstructorUsedError;
  String? get venue_name_full => throw _privateConstructorUsedError;
  String? get event_date => throw _privateConstructorUsedError;
  String? get event_date_end => throw _privateConstructorUsedError;
  String? get event_start_time => throw _privateConstructorUsedError;
  String? get event_end_time => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TicketDataCopyWith<TicketData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketDataCopyWith<$Res> {
  factory $TicketDataCopyWith(
          TicketData value, $Res Function(TicketData) then) =
      _$TicketDataCopyWithImpl<$Res, TicketData>;
  @useResult
  $Res call(
      {int? ticket_id,
      String? ticket_type,
      String? private_ref,
      String? fullname,
      String? email,
      String? tel,
      String? image_display,
      String? images_event,
      int? event_id,
      String? event_title,
      String? event_detail,
      String? venue_name,
      String? venue_name_full,
      String? event_date,
      String? event_date_end,
      String? event_start_time,
      String? event_end_time});
}

/// @nodoc
class _$TicketDataCopyWithImpl<$Res, $Val extends TicketData>
    implements $TicketDataCopyWith<$Res> {
  _$TicketDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = freezed,
    Object? ticket_type = freezed,
    Object? private_ref = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? tel = freezed,
    Object? image_display = freezed,
    Object? images_event = freezed,
    Object? event_id = freezed,
    Object? event_title = freezed,
    Object? event_detail = freezed,
    Object? venue_name = freezed,
    Object? venue_name_full = freezed,
    Object? event_date = freezed,
    Object? event_date_end = freezed,
    Object? event_start_time = freezed,
    Object? event_end_time = freezed,
  }) {
    return _then(_value.copyWith(
      ticket_id: freezed == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ticket_type: freezed == ticket_type
          ? _value.ticket_type
          : ticket_type // ignore: cast_nullable_to_non_nullable
              as String?,
      private_ref: freezed == private_ref
          ? _value.private_ref
          : private_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      image_display: freezed == image_display
          ? _value.image_display
          : image_display // ignore: cast_nullable_to_non_nullable
              as String?,
      images_event: freezed == images_event
          ? _value.images_event
          : images_event // ignore: cast_nullable_to_non_nullable
              as String?,
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      event_title: freezed == event_title
          ? _value.event_title
          : event_title // ignore: cast_nullable_to_non_nullable
              as String?,
      event_detail: freezed == event_detail
          ? _value.event_detail
          : event_detail // ignore: cast_nullable_to_non_nullable
              as String?,
      venue_name: freezed == venue_name
          ? _value.venue_name
          : venue_name // ignore: cast_nullable_to_non_nullable
              as String?,
      venue_name_full: freezed == venue_name_full
          ? _value.venue_name_full
          : venue_name_full // ignore: cast_nullable_to_non_nullable
              as String?,
      event_date: freezed == event_date
          ? _value.event_date
          : event_date // ignore: cast_nullable_to_non_nullable
              as String?,
      event_date_end: freezed == event_date_end
          ? _value.event_date_end
          : event_date_end // ignore: cast_nullable_to_non_nullable
              as String?,
      event_start_time: freezed == event_start_time
          ? _value.event_start_time
          : event_start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      event_end_time: freezed == event_end_time
          ? _value.event_end_time
          : event_end_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketDataImplCopyWith<$Res>
    implements $TicketDataCopyWith<$Res> {
  factory _$$TicketDataImplCopyWith(
          _$TicketDataImpl value, $Res Function(_$TicketDataImpl) then) =
      __$$TicketDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ticket_id,
      String? ticket_type,
      String? private_ref,
      String? fullname,
      String? email,
      String? tel,
      String? image_display,
      String? images_event,
      int? event_id,
      String? event_title,
      String? event_detail,
      String? venue_name,
      String? venue_name_full,
      String? event_date,
      String? event_date_end,
      String? event_start_time,
      String? event_end_time});
}

/// @nodoc
class __$$TicketDataImplCopyWithImpl<$Res>
    extends _$TicketDataCopyWithImpl<$Res, _$TicketDataImpl>
    implements _$$TicketDataImplCopyWith<$Res> {
  __$$TicketDataImplCopyWithImpl(
      _$TicketDataImpl _value, $Res Function(_$TicketDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ticket_id = freezed,
    Object? ticket_type = freezed,
    Object? private_ref = freezed,
    Object? fullname = freezed,
    Object? email = freezed,
    Object? tel = freezed,
    Object? image_display = freezed,
    Object? images_event = freezed,
    Object? event_id = freezed,
    Object? event_title = freezed,
    Object? event_detail = freezed,
    Object? venue_name = freezed,
    Object? venue_name_full = freezed,
    Object? event_date = freezed,
    Object? event_date_end = freezed,
    Object? event_start_time = freezed,
    Object? event_end_time = freezed,
  }) {
    return _then(_$TicketDataImpl(
      ticket_id: freezed == ticket_id
          ? _value.ticket_id
          : ticket_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ticket_type: freezed == ticket_type
          ? _value.ticket_type
          : ticket_type // ignore: cast_nullable_to_non_nullable
              as String?,
      private_ref: freezed == private_ref
          ? _value.private_ref
          : private_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      fullname: freezed == fullname
          ? _value.fullname
          : fullname // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      tel: freezed == tel
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      image_display: freezed == image_display
          ? _value.image_display
          : image_display // ignore: cast_nullable_to_non_nullable
              as String?,
      images_event: freezed == images_event
          ? _value.images_event
          : images_event // ignore: cast_nullable_to_non_nullable
              as String?,
      event_id: freezed == event_id
          ? _value.event_id
          : event_id // ignore: cast_nullable_to_non_nullable
              as int?,
      event_title: freezed == event_title
          ? _value.event_title
          : event_title // ignore: cast_nullable_to_non_nullable
              as String?,
      event_detail: freezed == event_detail
          ? _value.event_detail
          : event_detail // ignore: cast_nullable_to_non_nullable
              as String?,
      venue_name: freezed == venue_name
          ? _value.venue_name
          : venue_name // ignore: cast_nullable_to_non_nullable
              as String?,
      venue_name_full: freezed == venue_name_full
          ? _value.venue_name_full
          : venue_name_full // ignore: cast_nullable_to_non_nullable
              as String?,
      event_date: freezed == event_date
          ? _value.event_date
          : event_date // ignore: cast_nullable_to_non_nullable
              as String?,
      event_date_end: freezed == event_date_end
          ? _value.event_date_end
          : event_date_end // ignore: cast_nullable_to_non_nullable
              as String?,
      event_start_time: freezed == event_start_time
          ? _value.event_start_time
          : event_start_time // ignore: cast_nullable_to_non_nullable
              as String?,
      event_end_time: freezed == event_end_time
          ? _value.event_end_time
          : event_end_time // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TicketDataImpl implements _TicketData {
  const _$TicketDataImpl(
      {this.ticket_id,
      this.ticket_type,
      this.private_ref = '',
      this.fullname,
      this.email = '',
      this.tel = '',
      this.image_display = '',
      this.images_event,
      this.event_id,
      this.event_title = '',
      this.event_detail = '',
      this.venue_name = '',
      this.venue_name_full = '',
      this.event_date = '',
      this.event_date_end = '',
      this.event_start_time = '',
      this.event_end_time = ''});

  factory _$TicketDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TicketDataImplFromJson(json);

  @override
  final int? ticket_id;
  @override
  final String? ticket_type;
  @override
  @JsonKey()
  final String? private_ref;
  @override
  final String? fullname;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? tel;
  @override
  @JsonKey()
  final String? image_display;
  @override
  final String? images_event;
  @override
  final int? event_id;
  @override
  @JsonKey()
  final String? event_title;
  @override
  @JsonKey()
  final String? event_detail;
  @override
  @JsonKey()
  final String? venue_name;
  @override
  @JsonKey()
  final String? venue_name_full;
  @override
  @JsonKey()
  final String? event_date;
  @override
  @JsonKey()
  final String? event_date_end;
  @override
  @JsonKey()
  final String? event_start_time;
  @override
  @JsonKey()
  final String? event_end_time;

  @override
  String toString() {
    return 'TicketData(ticket_id: $ticket_id, ticket_type: $ticket_type, private_ref: $private_ref, fullname: $fullname, email: $email, tel: $tel, image_display: $image_display, images_event: $images_event, event_id: $event_id, event_title: $event_title, event_detail: $event_detail, venue_name: $venue_name, venue_name_full: $venue_name_full, event_date: $event_date, event_date_end: $event_date_end, event_start_time: $event_start_time, event_end_time: $event_end_time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketDataImpl &&
            (identical(other.ticket_id, ticket_id) ||
                other.ticket_id == ticket_id) &&
            (identical(other.ticket_type, ticket_type) ||
                other.ticket_type == ticket_type) &&
            (identical(other.private_ref, private_ref) ||
                other.private_ref == private_ref) &&
            (identical(other.fullname, fullname) ||
                other.fullname == fullname) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.tel, tel) || other.tel == tel) &&
            (identical(other.image_display, image_display) ||
                other.image_display == image_display) &&
            (identical(other.images_event, images_event) ||
                other.images_event == images_event) &&
            (identical(other.event_id, event_id) ||
                other.event_id == event_id) &&
            (identical(other.event_title, event_title) ||
                other.event_title == event_title) &&
            (identical(other.event_detail, event_detail) ||
                other.event_detail == event_detail) &&
            (identical(other.venue_name, venue_name) ||
                other.venue_name == venue_name) &&
            (identical(other.venue_name_full, venue_name_full) ||
                other.venue_name_full == venue_name_full) &&
            (identical(other.event_date, event_date) ||
                other.event_date == event_date) &&
            (identical(other.event_date_end, event_date_end) ||
                other.event_date_end == event_date_end) &&
            (identical(other.event_start_time, event_start_time) ||
                other.event_start_time == event_start_time) &&
            (identical(other.event_end_time, event_end_time) ||
                other.event_end_time == event_end_time));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      ticket_id,
      ticket_type,
      private_ref,
      fullname,
      email,
      tel,
      image_display,
      images_event,
      event_id,
      event_title,
      event_detail,
      venue_name,
      venue_name_full,
      event_date,
      event_date_end,
      event_start_time,
      event_end_time);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketDataImplCopyWith<_$TicketDataImpl> get copyWith =>
      __$$TicketDataImplCopyWithImpl<_$TicketDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TicketDataImplToJson(
      this,
    );
  }
}

abstract class _TicketData implements TicketData {
  const factory _TicketData(
      {final int? ticket_id,
      final String? ticket_type,
      final String? private_ref,
      final String? fullname,
      final String? email,
      final String? tel,
      final String? image_display,
      final String? images_event,
      final int? event_id,
      final String? event_title,
      final String? event_detail,
      final String? venue_name,
      final String? venue_name_full,
      final String? event_date,
      final String? event_date_end,
      final String? event_start_time,
      final String? event_end_time}) = _$TicketDataImpl;

  factory _TicketData.fromJson(Map<String, dynamic> json) =
      _$TicketDataImpl.fromJson;

  @override
  int? get ticket_id;
  @override
  String? get ticket_type;
  @override
  String? get private_ref;
  @override
  String? get fullname;
  @override
  String? get email;
  @override
  String? get tel;
  @override
  String? get image_display;
  @override
  String? get images_event;
  @override
  int? get event_id;
  @override
  String? get event_title;
  @override
  String? get event_detail;
  @override
  String? get venue_name;
  @override
  String? get venue_name_full;
  @override
  String? get event_date;
  @override
  String? get event_date_end;
  @override
  String? get event_start_time;
  @override
  String? get event_end_time;
  @override
  @JsonKey(ignore: true)
  _$$TicketDataImplCopyWith<_$TicketDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
