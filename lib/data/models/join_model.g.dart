// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JoinMenuImpl _$$JoinMenuImplFromJson(Map<String, dynamic> json) =>
    _$JoinMenuImpl(
      settings: (json['settings'] as List<dynamic>?)
              ?.map((e) => JoinMenuData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$JoinMenuImplToJson(_$JoinMenuImpl instance) =>
    <String, dynamic>{
      'settings': instance.settings,
    };

_$JoinAgendaImpl _$$JoinAgendaImplFromJson(Map<String, dynamic> json) =>
    _$JoinAgendaImpl(
      room_list: (json['room_list'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      sessions: (json['sessions'] as List<dynamic>?)
              ?.map((e) => SessionData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      event_start_date: json['event_start_date'] as String? ?? '',
      event_end_date: json['event_end_date'] as String? ?? '',
    );

Map<String, dynamic> _$$JoinAgendaImplToJson(_$JoinAgendaImpl instance) =>
    <String, dynamic>{
      'room_list': instance.room_list,
      'sessions': instance.sessions,
      'event_start_date': instance.event_start_date,
      'event_end_date': instance.event_end_date,
    };

_$SessionAnswerImpl _$$SessionAnswerImplFromJson(Map<String, dynamic> json) =>
    _$SessionAnswerImpl(
      answer_status: json['answer_status'] as bool? ?? false,
      answer_list: (json['answer_list'] as List<dynamic>?)
              ?.map(
                  (e) => SessionAnswerData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SessionAnswerImplToJson(_$SessionAnswerImpl instance) =>
    <String, dynamic>{
      'answer_status': instance.answer_status,
      'answer_list': instance.answer_list,
    };

_$FloorPlanImpl _$$FloorPlanImplFromJson(Map<String, dynamic> json) =>
    _$FloorPlanImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => FloorPlanData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FloorPlanImplToJson(_$FloorPlanImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SpeakerImpl _$$SpeakerImplFromJson(Map<String, dynamic> json) =>
    _$SpeakerImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => SpeakerData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SpeakerImplToJson(_$SpeakerImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$EventFileImpl _$$EventFileImplFromJson(Map<String, dynamic> json) =>
    _$EventFileImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => EventFileData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EventFileImplToJson(_$EventFileImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PartnersImpl _$$PartnersImplFromJson(Map<String, dynamic> json) =>
    _$PartnersImpl(
      data: json['data'] == null
          ? null
          : PartnersData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PartnersImplToJson(_$PartnersImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PartnersDataImpl _$$PartnersDataImplFromJson(Map<String, dynamic> json) =>
    _$PartnersDataImpl(
      group_left: json['group_left'] == null
          ? null
          : PartnersList.fromJson(json['group_left'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PartnersDataImplToJson(_$PartnersDataImpl instance) =>
    <String, dynamic>{
      'group_left': instance.group_left,
    };

_$GalleryImpl _$$GalleryImplFromJson(Map<String, dynamic> json) =>
    _$GalleryImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => GalleryData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$GalleryImplToJson(_$GalleryImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SessionRatingImpl _$$SessionRatingImplFromJson(Map<String, dynamic> json) =>
    _$SessionRatingImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map(
                  (e) => SessionRatingData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SessionRatingImplToJson(_$SessionRatingImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
