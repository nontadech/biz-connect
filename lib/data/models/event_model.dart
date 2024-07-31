// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'event_model.freezed.dart';
part 'event_model.g.dart';


@freezed
class EventStat with _$EventStat  {
  const factory EventStat({
    EventStatData? my_event_stat,
  }) = _EventStat;
  factory EventStat.fromJson(Map<String, Object?> json, )
      => _$EventStatFromJson(json);
}

@freezed
class Event with _$Event  {
  const factory Event({
    @Default([]) List<EventData> data
  }) = _Event;
  factory Event.fromJson(Map<String, Object?> json, )
      => _$EventFromJson(json);
}

@freezed
class PopularEvent with _$PopularEvent  {
  const factory PopularEvent({
    @Default([]) List<EventList> data
  }) = _PopularEvent;
  factory PopularEvent.fromJson(Map<String, Object?> json, )
      => _$PopularEventFromJson(json);
}


@freezed
class FavoriteEvent with _$FavoriteEvent  {
  const factory FavoriteEvent({
    FavoriteEventData? data,
    int? event_id
  }) = _FavoriteEvent;
  factory FavoriteEvent.fromJson(Map<String, Object?> json)
      => _$FavoriteEventFromJson(json);
}

