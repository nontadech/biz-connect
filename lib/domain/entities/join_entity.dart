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
class Files with _$Files  {
  const factory Files({
    int? id,
    @Default('') String? title,
    @Default('') String? file,
    @Default('') String? size
  }) = _Files;
  factory Files.fromJson(Map<String, Object?> json)
      => _$FilesFromJson(json);
}

@freezed
class SpeakersData with _$SpeakersData  {
  const factory SpeakersData({
    int? speaker_id,
    @Default('') String? fullname,
    @Default('') String? position,
    @Default('') String? company,
    @Default('') String? description,
    @Default('') String? image_url,
    @Default([]) List<Files>? files    
  }) = _SpeakersData;
  factory SpeakersData.fromJson(Map<String, Object?> json)
      => _$SpeakersDataFromJson(json);
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
    @Default([]) List<SpeakersData>? speakers    
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

@freezed
class SessionAnswerData with _$SessionAnswerData  {
  const factory SessionAnswerData({
    int? id,
    int? event_id,
    int? user_id,
    int? choice_id,
    int? question_id,
    int? question_type_id,
    int? agenda_id,
    int? is_session,
    @Default('') String? text,
    @Default('') String? file_names,
    @Default('') String? multiple_choices,
    int? rating
  }) = _SessionAnswerData;
  factory SessionAnswerData.fromJson(Map<String, Object?> json)
      => _$SessionAnswerDataFromJson(json);
}

@freezed
class FloorPlanData with _$FloorPlanData  {
  const factory FloorPlanData({
    int? fl_id,
    @Default('') String? fl_title,
    @Default('') String? image_url,
    @Default('') String? description
  }) = _FloorPlanData;
  factory FloorPlanData.fromJson(Map<String, Object?> json)
      => _$FloorPlanDataFromJson(json);
}

@freezed
class SpeakerData with _$SpeakerData  {
  const factory SpeakerData({
    int? speaker_id,
    @Default('') String? fullname,
    @Default('') String? position,
    @Default('') String? company,
    @Default('') String? image_url,
    @Default('') String? attendees_detail
  }) = _SpeakerData;
  factory SpeakerData.fromJson(Map<String, Object?> json)
      => _$SpeakerDataFromJson(json);
}

@freezed
class EventFileData with _$EventFileData  {
  const factory EventFileData({
    int? id,
    @Default('') String? name,
    @Default('') String? path_file,
    @Default('') String? size_file
  }) = _EventFileData;
  factory EventFileData.fromJson(Map<String, Object?> json)
      => _$EventFileDataFromJson(json);
}


@freezed
class PartnersList with _$PartnersList  {
  const factory PartnersList({
    @Default('') String title,
    @Default([]) List<MemberList> member_list
  }) = _PartnersList;
  factory PartnersList.fromJson(Map<String, Object?> json)
      => _$PartnersListFromJson(json);
}

@freezed
class MemberList with _$MemberList  {
  const factory MemberList({
    int? id,
    @Default('') String partner_type,
    @Default('') String logo_url,
  }) = _MemberList;
  factory MemberList.fromJson(Map<String, Object?> json)
      => _$MemberListFromJson(json);
}

@freezed
class GalleryData with _$GalleryData  {
  const factory GalleryData({
    int? id,
    @Default('') String image_path,
    @Default('') String url,
  }) = _GalleryData;
  factory GalleryData.fromJson(Map<String, Object?> json)
      => _$GalleryDataFromJson(json);
}

@freezed
class ChoiceItem with _$ChoiceItem  {
  const factory ChoiceItem({
    int? id,
    @Default('') String label,
  }) = _ChoiceItem;
  factory ChoiceItem.fromJson(Map<String, Object?> json)
      => _$ChoiceItemFromJson(json);
}

@JsonEnum(valueField: 'name')
enum QuiestionTypeName {
  singleText(name: "single_text"),
  longText(name: "long_text"),
  singleChoice(name: "single_choice"),
  multipleChoice(name: "multiple_choice"),
  star(name: "star"),
  attachImage(name: "attach_image"),
  rateTen(name: "rate_10");

  final String name;

  const QuiestionTypeName({
    required this.name,
  });
}

@freezed
class SessionRatingData with _$SessionRatingData  {
  const factory SessionRatingData({
    int? id,
    @Default('') String title,
    @Default(0) int quiestion_type_id,
    QuiestionTypeName? quiestion_type_name,
    @Default([]) List<ChoiceItem> choice_item,
  }) = _SessionRatingData;
  factory SessionRatingData.fromJson(Map<String, Object?> json)
      => _$SessionRatingDataFromJson(json);
}


class JoinAgendaInput {
  final int eventId;
  final int? speakerId;
  final String? room;
  
  JoinAgendaInput({
    required this.eventId,
    this.room,
    this.speakerId,
  }); 
}

class AnswersInput {
  final dynamic answer;
  final int? questionId;
  final int? questionTypeId;
  final String? comment;
  final bool? isImage;
  
  AnswersInput({
    this.answer,
    this.questionId,
    this.questionTypeId,
    this.comment,
    this.isImage,
  }); 
}

class SessionRateInput {
  final int? eventId;
  final int? agendaId;
  final int? isSession;
  final int? questionTypeId;
  final int? userId;
  final List<AnswersInput>? answers;
  
  SessionRateInput({
    this.eventId,
    this.agendaId,
    this.isSession,
    this.answers,
    this.questionTypeId,
    this.userId,
  }); 
}

class FileEmailInput {
  final int? eventId;
  final String? email;
  
  FileEmailInput({
    this.eventId,
    this.email,
  }); 
}
