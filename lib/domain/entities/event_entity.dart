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


