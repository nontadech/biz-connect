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
    );

Map<String, dynamic> _$$JoinAgendaImplToJson(_$JoinAgendaImpl instance) =>
    <String, dynamic>{
      'room_list': instance.room_list,
      'sessions': instance.sessions,
    };
