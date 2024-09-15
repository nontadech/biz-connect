// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_entity.freezed.dart';
part 'event_entity.g.dart';

enum EventType { news, events }
enum LangType { en, th }

@freezed
class EventList with _$EventList  {
  factory EventList({
    int? event_id,
    int? news_id,
    String? category_title,
    @Default("") String? title,
    @Default("") String? description,
    @Default("") String? thumnail,
    @Default("") String? image_display,
    @Default("") String? location_name,
    double? location_lat,
    double? location_lng,
    String? date,
    String? date_end,
    String? start_time,
    String? end_time,
    String? show_information,
    String? show_register,
    String? event_url,
    String? link_url,
    @Default("") String? venue_name,
    @Default("") String? venue_tel,
    @Default("-") String venue_email,
    String? direction_taxi,
    String? direction_bts,
    String? direction_foot,
    String? company_info,
    @Default("") String? company,
    @Default("") String? location,
    @Default(false) bool is_favorite,
    @Default("N") String? is_register,  
  }) = _EventList;
    factory EventList.fromJson(Map<String, Object?> json)
      => _$EventListFromJson(json);
}

@freezed
class EventData with _$EventData  {
  factory EventData({
    String? title,
    EventType? type,
    String? is_more,
    List<EventList>? list,
  }) = _EventData;
  
    factory EventData.fromJson(Map<String, Object?> json,)
      => _$EventDataFromJson(json);
}

@freezed
class FavoriteEventData with _$FavoriteEventData  {
  const factory FavoriteEventData({
    bool? status
  }) = _FavoriteEventData;
  factory FavoriteEventData.fromJson(Map<String, Object?> json)
      => _$FavoriteEventDataFromJson(json);
}


@freezed
class EventStatData with _$EventStatData  {
  const factory EventStatData({
    @Default(0) int my_ticket,
    @Default(0) int my_favorite,
    @Default(0) int my_joining,
    @Default(0) int my_today_joining,
    @Default(0) int my_hist_joining,
    @Default([]) List<EventList> join_event_data,
    @Default([]) List<EventList> join_event_today,
    @Default([]) List<EventList> join_hist_event_data,
  }) = _EventStatData;
  factory EventStatData.fromJson(Map<String, Object?> json)
      => _$EventStatDataFromJson(json);
}

@freezed
class ZoneAvalible with _$ZoneAvalible  {
  const factory ZoneAvalible({
    @Default('') String? zone_name,
    @Default('') String? zone_description,
    @Default(0) int? zone_id,
    @Default('') String? date,
    @Default('') String? start_time,
    @Default('') String? end_time,
    @Default('') String? location
  }) = _ZoneAvalible;
  factory ZoneAvalible.fromJson(Map<String, Object?> json)
      => _$ZoneAvalibleFromJson(json);
}


@freezed
class EventFromRegisterData with _$EventFromRegisterData  {
  const factory EventFromRegisterData({
    @Default(0) int? user_id,
    @Default(0) int? event_id,
    @Default('') String? title,
    @Default('') String? description,
    @Default('') String? image_display,
    @Default('') String? thumnail,
    @Default('') String? location_name,
    @Default('') String? location_lat,
    @Default('') String? location_long,
    @Default('') String? date,
    @Default('') String? date_end,
    @Default('') String? start_time,
    @Default('') String? end_time,
    @Default(0) int? facebook_link,
    @Default('') String? intragrams_link,
    @Default(0) int? twitter_link,
    @Default([]) List<ZoneAvalible>? zone_avalible

  }) = _EventFromRegisterData;
  factory EventFromRegisterData.fromJson(Map<String, Object?> json)
      => _$EventFromRegisterDataFromJson(json);
}

@freezed
class EventPermissionData with _$EventPermissionData  {
  const factory EventPermissionData({
    @Default(false) bool? event_register,
    @Default(false) bool? attendee_has_ticket,
  }) = _EventPermissionData;
  factory EventPermissionData.fromJson(Map<String, Object?> json)
      => _$EventPermissionDataFromJson(json);
}


