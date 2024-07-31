// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policy_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PolicyImpl _$$PolicyImplFromJson(Map<String, dynamic> json) => _$PolicyImpl(
      data: json['data'] == null
          ? null
          : PolicyData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PolicyImplToJson(_$PolicyImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PolicyDetailImpl _$$PolicyDetailImplFromJson(Map<String, dynamic> json) =>
    _$PolicyDetailImpl(
      data: json['data'] == null
          ? null
          : PolicyDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PolicyDetailImplToJson(_$PolicyDetailImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PolicySaveImpl _$$PolicySaveImplFromJson(Map<String, dynamic> json) =>
    _$PolicySaveImpl(
      data: json['data'] == null
          ? null
          : PolicySaveData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PolicySaveImplToJson(_$PolicySaveImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
