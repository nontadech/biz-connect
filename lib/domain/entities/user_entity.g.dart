// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCategoryImpl _$$UserCategoryImplFromJson(Map<String, dynamic> json) =>
    _$UserCategoryImpl(
      cate_id: (json['cate_id'] as num?)?.toInt(),
      cate_name: json['cate_name'] as String?,
    );

Map<String, dynamic> _$$UserCategoryImplToJson(_$UserCategoryImpl instance) =>
    <String, dynamic>{
      'cate_id': instance.cate_id,
      'cate_name': instance.cate_name,
    };

_$UserInterestImpl _$$UserInterestImplFromJson(Map<String, dynamic> json) =>
    _$UserInterestImpl(
      interest_id: (json['interest_id'] as num?)?.toInt(),
      interest_name: json['interest_name'] as String?,
    );

Map<String, dynamic> _$$UserInterestImplToJson(_$UserInterestImpl instance) =>
    <String, dynamic>{
      'interest_id': instance.interest_id,
      'interest_name': instance.interest_name,
    };

_$ExhibitorImpl _$$ExhibitorImplFromJson(Map<String, dynamic> json) =>
    _$ExhibitorImpl(
      id: (json['id'] as num?)?.toInt(),
      api_token: json['api_token'] as String?,
      full_name: json['full_name'] as String?,
      profile: json['profile'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      position: json['position'] as String?,
      company: json['company'] as String?,
      status_contact: (json['status_contact'] as num?)?.toInt(),
      is_recondition: (json['is_recondition'] as num?)?.toInt(),
      is_exhibitor: json['is_exhibitor'] as bool?,
      company_info: json['company_info'] as String?,
    );

Map<String, dynamic> _$$ExhibitorImplToJson(_$ExhibitorImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_token': instance.api_token,
      'full_name': instance.full_name,
      'profile': instance.profile,
      'email': instance.email,
      'phone': instance.phone,
      'position': instance.position,
      'company': instance.company,
      'status_contact': instance.status_contact,
      'is_recondition': instance.is_recondition,
      'is_exhibitor': instance.is_exhibitor,
      'company_info': instance.company_info,
    };

_$AttendeeImpl _$$AttendeeImplFromJson(Map<String, dynamic> json) =>
    _$AttendeeImpl(
      id: (json['id'] as num?)?.toInt(),
      api_token: json['api_token'] as String?,
      full_name: json['full_name'] as String? ?? '',
      profile: json['profile'] as String?,
      phone: json['phone'] as String? ?? '',
      position: json['position'] as String? ?? '',
      company: json['company'] as String? ?? '',
      email: json['email'] as String? ?? '',
      status_contact: (json['status_contact'] as num?)?.toInt(),
      is_recondition: (json['is_recondition'] as num?)?.toInt(),
      is_exhibitor: json['is_exhibitor'] as bool?,
      company_info: json['company_info'] as String? ?? '',
      user_category: (json['user_category'] as List<dynamic>?)
              ?.map((e) => UserCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      user_interest: (json['user_interest'] as List<dynamic>?)
              ?.map((e) => UserInterest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$AttendeeImplToJson(_$AttendeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'api_token': instance.api_token,
      'full_name': instance.full_name,
      'profile': instance.profile,
      'phone': instance.phone,
      'position': instance.position,
      'company': instance.company,
      'email': instance.email,
      'status_contact': instance.status_contact,
      'is_recondition': instance.is_recondition,
      'is_exhibitor': instance.is_exhibitor,
      'company_info': instance.company_info,
      'user_category': instance.user_category,
      'user_interest': instance.user_interest,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      attendee: json['attendee'] == null
          ? null
          : Attendee.fromJson(json['attendee'] as Map<String, dynamic>),
      exhibitor: json['exhibitor'] == null
          ? null
          : Exhibitor.fromJson(json['exhibitor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'attendee': instance.attendee,
      'exhibitor': instance.exhibitor,
    };
