// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinMenuDataImpl _$$JoinMenuDataImplFromJson(Map<String, dynamic> json) =>
    _$JoinMenuDataImpl(
      menu_name: json['menu_name'] as String? ?? '',
      menu_status: json['menu_status'] as String? ?? '',
      badge: json['badge'] as String? ?? '',
    );

Map<String, dynamic> _$$JoinMenuDataImplToJson(_$JoinMenuDataImpl instance) =>
    <String, dynamic>{
      'menu_name': instance.menu_name,
      'menu_status': instance.menu_status,
      'badge': instance.badge,
    };

_$SpeakerDataImpl _$$SpeakerDataImplFromJson(Map<String, dynamic> json) =>
    _$SpeakerDataImpl(
      speaker_id: (json['speaker_id'] as num?)?.toInt(),
      fullname: json['fullname'] as String? ?? '',
      position: json['position'] as String? ?? '',
      company: json['company'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image_url: json['image_url'] as String? ?? '',
      files: json['files'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$$SpeakerDataImplToJson(_$SpeakerDataImpl instance) =>
    <String, dynamic>{
      'speaker_id': instance.speaker_id,
      'fullname': instance.fullname,
      'position': instance.position,
      'company': instance.company,
      'description': instance.description,
      'image_url': instance.image_url,
      'files': instance.files,
    };

_$SessionListImpl _$$SessionListImplFromJson(Map<String, dynamic> json) =>
    _$SessionListImpl(
      id: (json['id'] as num?)?.toInt(),
      start_time: json['start_time'] as String? ?? '',
      end_time: json['end_time'] as String? ?? '',
      date: json['date'] as String? ?? '',
      location: json['location'] as String? ?? '',
      title: json['title'] as String? ?? '',
      detail: json['detail'] as String? ?? '',
      speakers: (json['speakers'] as List<dynamic>?)
              ?.map((e) => SpeakerData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SessionListImplToJson(_$SessionListImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'date': instance.date,
      'location': instance.location,
      'title': instance.title,
      'detail': instance.detail,
      'speakers': instance.speakers,
    };

_$SessionDataImpl _$$SessionDataImplFromJson(Map<String, dynamic> json) =>
    _$SessionDataImpl(
      session_title_date: json['session_title_date'] as String? ?? '',
      session_list: (json['session_list'] as List<dynamic>?)
              ?.map((e) => SessionList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SessionDataImplToJson(_$SessionDataImpl instance) =>
    <String, dynamic>{
      'session_title_date': instance.session_title_date,
      'session_list': instance.session_list,
    };
