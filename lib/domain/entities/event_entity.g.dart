// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventListImpl _$$EventListImplFromJson(Map<String, dynamic> json) =>
    _$EventListImpl(
      event_id: (json['event_id'] as num?)?.toInt(),
      news_id: (json['news_id'] as num?)?.toInt(),
      category_title: json['category_title'] as String?,
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      thumnail: json['thumnail'] as String? ?? "",
      image_display: json['image_display'] as String? ?? "",
      location_name: json['location_name'] as String? ?? "",
      location_lat: (json['location_lat'] as num?)?.toDouble() ?? 0.0,
      location_lng: (json['location_lng'] as num?)?.toDouble() ?? 0.0,
      date: json['date'] as String?,
      date_end: json['date_end'] as String?,
      start_time: json['start_time'] as String?,
      end_time: json['end_time'] as String?,
      show_information: json['show_information'] as String?,
      show_register: json['show_register'] as String?,
      event_url: json['event_url'] as String?,
      link_url: json['link_url'] as String?,
      venue_name: json['venue_name'] as String? ?? "",
      venue_tel: json['venue_tel'] as String? ?? "",
      venue_email: json['venue_email'] as String? ?? "-",
      direction_taxi: json['direction_taxi'] as String?,
      direction_bts: json['direction_bts'] as String?,
      direction_foot: json['direction_foot'] as String?,
      company_info: json['company_info'] as String?,
      company: json['company'] as String? ?? "",
      location: json['location'] as String? ?? "",
      is_favorite: json['is_favorite'] as bool? ?? false,
      is_register: json['is_register'] as String? ?? "N",
    );

Map<String, dynamic> _$$EventListImplToJson(_$EventListImpl instance) =>
    <String, dynamic>{
      'event_id': instance.event_id,
      'news_id': instance.news_id,
      'category_title': instance.category_title,
      'title': instance.title,
      'description': instance.description,
      'thumnail': instance.thumnail,
      'image_display': instance.image_display,
      'location_name': instance.location_name,
      'location_lat': instance.location_lat,
      'location_lng': instance.location_lng,
      'date': instance.date,
      'date_end': instance.date_end,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'show_information': instance.show_information,
      'show_register': instance.show_register,
      'event_url': instance.event_url,
      'link_url': instance.link_url,
      'venue_name': instance.venue_name,
      'venue_tel': instance.venue_tel,
      'venue_email': instance.venue_email,
      'direction_taxi': instance.direction_taxi,
      'direction_bts': instance.direction_bts,
      'direction_foot': instance.direction_foot,
      'company_info': instance.company_info,
      'company': instance.company,
      'location': instance.location,
      'is_favorite': instance.is_favorite,
      'is_register': instance.is_register,
    };

_$EventDataImpl _$$EventDataImplFromJson(Map<String, dynamic> json) =>
    _$EventDataImpl(
      title: json['title'] as String?,
      type: $enumDecodeNullable(_$EventTypeEnumMap, json['type']),
      is_more: json['is_more'] as String?,
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => EventList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventDataImplToJson(_$EventDataImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': _$EventTypeEnumMap[instance.type],
      'is_more': instance.is_more,
      'list': instance.list,
    };

const _$EventTypeEnumMap = {
  EventType.news: 'news',
  EventType.events: 'events',
};

_$FavoriteEventDataImpl _$$FavoriteEventDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FavoriteEventDataImpl(
      status: json['status'] as bool?,
    );

Map<String, dynamic> _$$FavoriteEventDataImplToJson(
        _$FavoriteEventDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
    };

_$EventStatDataImpl _$$EventStatDataImplFromJson(Map<String, dynamic> json) =>
    _$EventStatDataImpl(
      my_ticket: (json['my_ticket'] as num?)?.toInt() ?? 0,
      my_favorite: (json['my_favorite'] as num?)?.toInt() ?? 0,
      my_joining: (json['my_joining'] as num?)?.toInt() ?? 0,
      my_today_joining: (json['my_today_joining'] as num?)?.toInt() ?? 0,
      my_hist_joining: (json['my_hist_joining'] as num?)?.toInt() ?? 0,
      join_event_data: (json['join_event_data'] as List<dynamic>?)
              ?.map((e) => EventList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      join_event_today: (json['join_event_today'] as List<dynamic>?)
              ?.map((e) => EventList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      join_hist_event_data: (json['join_hist_event_data'] as List<dynamic>?)
              ?.map((e) => EventList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EventStatDataImplToJson(_$EventStatDataImpl instance) =>
    <String, dynamic>{
      'my_ticket': instance.my_ticket,
      'my_favorite': instance.my_favorite,
      'my_joining': instance.my_joining,
      'my_today_joining': instance.my_today_joining,
      'my_hist_joining': instance.my_hist_joining,
      'join_event_data': instance.join_event_data,
      'join_event_today': instance.join_event_today,
      'join_hist_event_data': instance.join_hist_event_data,
    };

_$ZoneAvalibleImpl _$$ZoneAvalibleImplFromJson(Map<String, dynamic> json) =>
    _$ZoneAvalibleImpl(
      zone_name: json['zone_name'] as String? ?? '',
      zone_description: json['zone_description'] as String? ?? '',
      zone_id: (json['zone_id'] as num?)?.toInt() ?? 0,
      date: json['date'] as String? ?? '',
      start_time: json['start_time'] as String? ?? '',
      end_time: json['end_time'] as String? ?? '',
      location: json['location'] as String? ?? '',
    );

Map<String, dynamic> _$$ZoneAvalibleImplToJson(_$ZoneAvalibleImpl instance) =>
    <String, dynamic>{
      'zone_name': instance.zone_name,
      'zone_description': instance.zone_description,
      'zone_id': instance.zone_id,
      'date': instance.date,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'location': instance.location,
    };

_$EventFromRegisterDataImpl _$$EventFromRegisterDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EventFromRegisterDataImpl(
      user_id: (json['user_id'] as num?)?.toInt() ?? 0,
      event_id: (json['event_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image_display: json['image_display'] as String? ?? '',
      thumnail: json['thumnail'] as String? ?? '',
      location_name: json['location_name'] as String? ?? '',
      location_lat: json['location_lat'] as String? ?? '',
      location_long: json['location_long'] as String? ?? '',
      date: json['date'] as String? ?? '',
      date_end: json['date_end'] as String? ?? '',
      start_time: json['start_time'] as String? ?? '',
      end_time: json['end_time'] as String? ?? '',
      facebook_link: (json['facebook_link'] as num?)?.toInt() ?? 0,
      intragrams_link: json['intragrams_link'] as String? ?? '',
      twitter_link: (json['twitter_link'] as num?)?.toInt() ?? 0,
      zone_avalible: (json['zone_avalible'] as List<dynamic>?)
              ?.map((e) => ZoneAvalible.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$EventFromRegisterDataImplToJson(
        _$EventFromRegisterDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'event_id': instance.event_id,
      'title': instance.title,
      'description': instance.description,
      'image_display': instance.image_display,
      'thumnail': instance.thumnail,
      'location_name': instance.location_name,
      'location_lat': instance.location_lat,
      'location_long': instance.location_long,
      'date': instance.date,
      'date_end': instance.date_end,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'facebook_link': instance.facebook_link,
      'intragrams_link': instance.intragrams_link,
      'twitter_link': instance.twitter_link,
      'zone_avalible': instance.zone_avalible,
    };

_$EventPermissionDataImpl _$$EventPermissionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$EventPermissionDataImpl(
      event_register: json['event_register'] as bool? ?? false,
      attendee_has_ticket: json['attendee_has_ticket'] as bool? ?? false,
    );

Map<String, dynamic> _$$EventPermissionDataImplToJson(
        _$EventPermissionDataImpl instance) =>
    <String, dynamic>{
      'event_register': instance.event_register,
      'attendee_has_ticket': instance.attendee_has_ticket,
    };
