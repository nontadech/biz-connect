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

_$FilesImpl _$$FilesImplFromJson(Map<String, dynamic> json) => _$FilesImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String? ?? '',
      file: json['file'] as String? ?? '',
      size: json['size'] as String? ?? '',
    );

Map<String, dynamic> _$$FilesImplToJson(_$FilesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'file': instance.file,
      'size': instance.size,
    };

_$SpeakersDataImpl _$$SpeakersDataImplFromJson(Map<String, dynamic> json) =>
    _$SpeakersDataImpl(
      speaker_id: (json['speaker_id'] as num?)?.toInt(),
      fullname: json['fullname'] as String? ?? '',
      position: json['position'] as String? ?? '',
      company: json['company'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image_url: json['image_url'] as String? ?? '',
      files: (json['files'] as List<dynamic>?)
              ?.map((e) => Files.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SpeakersDataImplToJson(_$SpeakersDataImpl instance) =>
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
              ?.map((e) => SpeakersData.fromJson(e as Map<String, dynamic>))
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

_$SessionAnswerDataImpl _$$SessionAnswerDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SessionAnswerDataImpl(
      id: (json['id'] as num?)?.toInt(),
      event_id: (json['event_id'] as num?)?.toInt(),
      user_id: (json['user_id'] as num?)?.toInt(),
      choice_id: (json['choice_id'] as num?)?.toInt(),
      question_id: (json['question_id'] as num?)?.toInt(),
      question_type_id: (json['question_type_id'] as num?)?.toInt(),
      agenda_id: (json['agenda_id'] as num?)?.toInt(),
      is_session: (json['is_session'] as num?)?.toInt(),
      text: json['text'] as String? ?? '',
      file_names: json['file_names'] as String? ?? '',
      multiple_choices: json['multiple_choices'] as String? ?? '',
      rating: (json['rating'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SessionAnswerDataImplToJson(
        _$SessionAnswerDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'event_id': instance.event_id,
      'user_id': instance.user_id,
      'choice_id': instance.choice_id,
      'question_id': instance.question_id,
      'question_type_id': instance.question_type_id,
      'agenda_id': instance.agenda_id,
      'is_session': instance.is_session,
      'text': instance.text,
      'file_names': instance.file_names,
      'multiple_choices': instance.multiple_choices,
      'rating': instance.rating,
    };

_$FloorPlanDataImpl _$$FloorPlanDataImplFromJson(Map<String, dynamic> json) =>
    _$FloorPlanDataImpl(
      fl_id: (json['fl_id'] as num?)?.toInt(),
      fl_title: json['fl_title'] as String? ?? '',
      image_url: json['image_url'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$FloorPlanDataImplToJson(_$FloorPlanDataImpl instance) =>
    <String, dynamic>{
      'fl_id': instance.fl_id,
      'fl_title': instance.fl_title,
      'image_url': instance.image_url,
      'description': instance.description,
    };

_$SpeakerDataImpl _$$SpeakerDataImplFromJson(Map<String, dynamic> json) =>
    _$SpeakerDataImpl(
      speaker_id: (json['speaker_id'] as num?)?.toInt(),
      fullname: json['fullname'] as String? ?? '',
      position: json['position'] as String? ?? '',
      company: json['company'] as String? ?? '',
      image_url: json['image_url'] as String? ?? '',
      attendees_detail: json['attendees_detail'] as String? ?? '',
    );

Map<String, dynamic> _$$SpeakerDataImplToJson(_$SpeakerDataImpl instance) =>
    <String, dynamic>{
      'speaker_id': instance.speaker_id,
      'fullname': instance.fullname,
      'position': instance.position,
      'company': instance.company,
      'image_url': instance.image_url,
      'attendees_detail': instance.attendees_detail,
    };
