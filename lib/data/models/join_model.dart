// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'join_model.freezed.dart';
part 'join_model.g.dart';


@freezed
class JoinMenu with _$JoinMenu  {
  const factory JoinMenu({
    @Default([]) List<JoinMenuData> settings,
  }) = _JoinMenu;
  factory JoinMenu.fromJson(Map<String, Object?> json)
      => _$JoinMenuFromJson(json);
}

@freezed
class JoinAgenda with _$JoinAgenda  {
  const factory JoinAgenda({
    @Default([]) List<String> room_list,
    @Default([]) List<SessionData> sessions,
    @Default('') String? event_start_date,
    @Default('') String? event_end_date
  }) = _JoinAgenda;
  factory JoinAgenda.fromJson(Map<String, Object?> json)
      => _$JoinAgendaFromJson(json);
}


@freezed
class SessionAnswer with _$SessionAnswer  {
  const factory SessionAnswer({
    @Default(false) bool answer_status,
    @Default([]) List<SessionAnswerData> answer_list
  }) = _SessionAnswer;
  factory SessionAnswer.fromJson(Map<String, Object?> json)
      => _$SessionAnswerFromJson(json);
}

@freezed
class FloorPlan with _$FloorPlan  {
  const factory FloorPlan({
    @Default([]) List<FloorPlanData> data
  }) = _FloorPlan;
  factory FloorPlan.fromJson(Map<String, Object?> json)
      => _$FloorPlanFromJson(json);
}

@freezed
class Speaker with _$Speaker  {
  const factory Speaker({
    @Default([]) List<SpeakerData> data
  }) = _Speaker;
  factory Speaker.fromJson(Map<String, Object?> json)
      => _$SpeakerFromJson(json);
}

@freezed
class EventFile with _$EventFile  {
  const factory EventFile({
    @Default([]) List<EventFileData> data
  }) = _EventFile;
  factory EventFile.fromJson(Map<String, Object?> json)
      => _$EventFileFromJson(json);
}

@freezed
class Partners with _$Partners  {
  const factory Partners({
    PartnersData? data
  }) = _Partners;
  factory Partners.fromJson(Map<String, Object?> json)
      => _$PartnersFromJson(json);
}

@freezed
class PartnersData with _$PartnersData  {
  const factory PartnersData({
    PartnersList? group_left
  }) = _PartnersData;
  factory PartnersData.fromJson(Map<String, Object?> json)
      => _$PartnersDataFromJson(json);
}

@freezed
class Gallery with _$Gallery  {
  const factory Gallery({
    @Default([]) List<GalleryData>? data
  }) = _Gallery;
  factory Gallery.fromJson(Map<String, Object?> json)
      => _$GalleryFromJson(json);
}

@freezed
class SessionRating with _$SessionRating  {
  const factory SessionRating({
    @Default([]) List<SessionRatingData>? data
  }) = _SessionRating;
  factory SessionRating.fromJson(Map<String, Object?> json)
      => _$SessionRatingFromJson(json);
}
