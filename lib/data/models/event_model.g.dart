// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventStatImpl _$$EventStatImplFromJson(Map<String, dynamic> json) =>
    _$EventStatImpl(
      my_event_stat: json['my_event_stat'] == null
          ? null
          : EventStatData.fromJson(
              json['my_event_stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventStatImplToJson(_$EventStatImpl instance) =>
    <String, dynamic>{
      'my_event_stat': instance.my_event_stat,
    };

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => EventData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PopularEventImpl _$$PopularEventImplFromJson(Map<String, dynamic> json) =>
    _$PopularEventImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => EventList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PopularEventImplToJson(_$PopularEventImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$FavoriteEventImpl _$$FavoriteEventImplFromJson(Map<String, dynamic> json) =>
    _$FavoriteEventImpl(
      data: json['data'] == null
          ? null
          : FavoriteEventData.fromJson(json['data'] as Map<String, dynamic>),
      event_id: (json['event_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FavoriteEventImplToJson(_$FavoriteEventImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'event_id': instance.event_id,
    };

_$EventFromRegisterImpl _$$EventFromRegisterImplFromJson(
        Map<String, dynamic> json) =>
    _$EventFromRegisterImpl(
      events: (json['events'] as List<dynamic>?)
          ?.map(
              (e) => EventFromRegisterData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventFromRegisterImplToJson(
        _$EventFromRegisterImpl instance) =>
    <String, dynamic>{
      'events': instance.events,
    };

_$EventPermissionImpl _$$EventPermissionImplFromJson(
        Map<String, dynamic> json) =>
    _$EventPermissionImpl(
      data: json['data'] == null
          ? null
          : EventPermissionData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventPermissionImplToJson(
        _$EventPermissionImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
