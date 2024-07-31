// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PolicyDataImpl _$$PolicyDataImplFromJson(Map<String, dynamic> json) =>
    _$PolicyDataImpl(
      id: (json['id'] as num?)?.toInt(),
      api_token: json['api_token'] as String? ?? '',
      is_pdpa: (json['is_pdpa'] as num?)?.toInt() ?? 0,
      is_recondition: (json['is_recondition'] as num?)?.toInt() ?? 0,
      attendee_id: (json['attendee_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PolicyDataImplToJson(_$PolicyDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_token': instance.api_token,
      'is_pdpa': instance.is_pdpa,
      'is_recondition': instance.is_recondition,
      'attendee_id': instance.attendee_id,
    };

_$PolicyDetailDataImpl _$$PolicyDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PolicyDetailDataImpl(
      active: (json['active'] as num?)?.toInt(),
      type: $enumDecodeNullable(_$TermConditionTypeEnumMap, json['type']),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$PolicyDetailDataImplToJson(
        _$PolicyDetailDataImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'type': _$TermConditionTypeEnumMap[instance.type],
      'description': instance.description,
    };

const _$TermConditionTypeEnumMap = {
  TermConditionType.pdpa: 'pdpa',
  TermConditionType.recondition: 'recondition',
};

_$PolicySaveDataImpl _$$PolicySaveDataImplFromJson(Map<String, dynamic> json) =>
    _$PolicySaveDataImpl(
      id: (json['id'] as num?)?.toInt(),
      api_token: json['api_token'] as String? ?? '',
      full_name: json['full_name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      position: json['position'] as String? ?? '',
      action: json['action'] as String? ?? '',
      attendee_id: (json['attendee_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PolicySaveDataImplToJson(
        _$PolicySaveDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_token': instance.api_token,
      'full_name': instance.full_name,
      'email': instance.email,
      'phone': instance.phone,
      'position': instance.position,
      'action': instance.action,
      'attendee_id': instance.attendee_id,
    };
