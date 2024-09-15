// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingImpl _$$SettingImplFromJson(Map<String, dynamic> json) =>
    _$SettingImpl(
      language: $enumDecodeNullable(_$LangTypeEnumMap, json['language']) ??
          LangType.en,
      isNotification: json['isNotification'] as bool? ?? false,
      apnsToken: json['apnsToken'] as String? ?? '',
      photoAccessDenied: json['photoAccessDenied'] as bool? ?? false,
      cameraAccessDenied: json['cameraAccessDenied'] as bool? ?? false,
    );

Map<String, dynamic> _$$SettingImplToJson(_$SettingImpl instance) =>
    <String, dynamic>{
      'language': _$LangTypeEnumMap[instance.language]!,
      'isNotification': instance.isNotification,
      'apnsToken': instance.apnsToken,
      'photoAccessDenied': instance.photoAccessDenied,
      'cameraAccessDenied': instance.cameraAccessDenied,
    };

const _$LangTypeEnumMap = {
  LangType.en: 'en',
  LangType.th: 'th',
};
