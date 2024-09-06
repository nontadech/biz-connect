// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChoiceImpl _$$ChoiceImplFromJson(Map<String, dynamic> json) => _$ChoiceImpl(
      id: json['id'] as String? ?? "",
      awnser: json['awnser'] as String? ?? "",
      isSelect: json['isSelect'] as bool? ?? false,
    );

Map<String, dynamic> _$$ChoiceImplToJson(_$ChoiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'awnser': instance.awnser,
      'isSelect': instance.isSelect,
    };

_$PollDataImpl _$$PollDataImplFromJson(Map<String, dynamic> json) =>
    _$PollDataImpl(
      id: json['id'] as String? ?? "",
      question: json['question'] as String? ?? "",
      choice_list: (json['choice_list'] as List<dynamic>?)
              ?.map((e) => Choice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PollDataImplToJson(_$PollDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'choice_list': instance.choice_list,
    };

_$PollImpl _$$PollImplFromJson(Map<String, dynamic> json) => _$PollImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => PollData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$PollImplToJson(_$PollImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$QuestionDataImpl _$$QuestionDataImplFromJson(Map<String, dynamic> json) =>
    _$QuestionDataImpl(
      status: json['status'] as String? ?? '',
      create_date: json['create_date'] as String? ?? '',
      user_name: json['user_name'] as String? ?? '',
      user_id: json['user_id'] as String? ?? '',
      user_profile: json['user_profile'] as String? ?? '',
      text: json['text'] as String? ?? '',
    );

Map<String, dynamic> _$$QuestionDataImplToJson(_$QuestionDataImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'create_date': instance.create_date,
      'user_name': instance.user_name,
      'user_id': instance.user_id,
      'user_profile': instance.user_profile,
      'text': instance.text,
    };
