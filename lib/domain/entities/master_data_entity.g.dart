// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'master_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InterestDataImpl _$$InterestDataImplFromJson(Map<String, dynamic> json) =>
    _$InterestDataImpl(
      interest_id: (json['interest_id'] as num?)?.toInt(),
      interest_name: json['interest_name'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$InterestDataImplToJson(_$InterestDataImpl instance) =>
    <String, dynamic>{
      'interest_id': instance.interest_id,
      'interest_name': instance.interest_name,
      'isSelected': instance.isSelected,
    };

_$CategoryDataImpl _$$CategoryDataImplFromJson(Map<String, dynamic> json) =>
    _$CategoryDataImpl(
      cate_id: (json['cate_id'] as num?)?.toInt(),
      cate_name: json['cate_name'] as String?,
      isSelected: json['isSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$CategoryDataImplToJson(_$CategoryDataImpl instance) =>
    <String, dynamic>{
      'cate_id': instance.cate_id,
      'cate_name': instance.cate_name,
      'isSelected': instance.isSelected,
    };
