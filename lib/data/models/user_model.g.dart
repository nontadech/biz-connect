// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$UserAttendeeImpl _$$UserAttendeeImplFromJson(Map<String, dynamic> json) =>
    _$UserAttendeeImpl(
      data: json['data'] == null
          ? null
          : Attendee.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$UserAttendeeImplToJson(_$UserAttendeeImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
    };
