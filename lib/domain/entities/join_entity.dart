// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'join_entity.freezed.dart';
part 'join_entity.g.dart';


@freezed
class JoinMenuData with _$JoinMenuData  {
  const factory JoinMenuData({
    @Default('') String? menu_name,
    @Default('') String? menu_status,
    @Default('') String? badge
  }) = _JoinMenuData;
  factory JoinMenuData.fromJson(Map<String, Object?> json)
      => _$JoinMenuDataFromJson(json);
}

@freezed
class SpeakerData with _$SpeakerData  {
  const factory SpeakerData({
    int? speaker_id,
    @Default('') String? fullname,
    @Default('') String? position,
    @Default('') String? company,
    @Default('') String? description,
    @Default('') String? image_url,
    @Default([]) List<dynamic>? files    
  }) = _SpeakerData;
  factory SpeakerData.fromJson(Map<String, Object?> json)
      => _$SpeakerDataFromJson(json);
}


@freezed
class SessionList with _$SessionList  {
  const factory SessionList({
    int? id,
    @Default('') String? start_time,
    @Default('') String? end_time,
    @Default('') String? date,
    @Default('') String? location,
    @Default('') String? title,
    @Default('') String? detail,
    @Default([]) List<SpeakerData>? speakers    
  }) = _SessionList;
  factory SessionList.fromJson(Map<String, Object?> json)
      => _$SessionListFromJson(json);
}


@freezed
class SessionData with _$SessionData  {
  const factory SessionData({
    @Default('') String? session_title_date,
    @Default([]) List<SessionList>? session_list
  }) = _SessionData;
  factory SessionData.fromJson(Map<String, Object?> json)
      => _$SessionDataFromJson(json);
}

class JoinAgendaInput {
  final int eventId;
  final String? room;
  
  JoinAgendaInput({
    required this.eventId,
    this.room,
  }); 
}