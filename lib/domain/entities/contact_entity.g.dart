// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContactDataImpl _$$ContactDataImplFromJson(Map<String, dynamic> json) =>
    _$ContactDataImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      first_name: json['first_name'] as String? ?? '',
      last_name: json['last_name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      company: json['company'] as String? ?? '',
      position: json['position'] as String? ?? '',
      email: json['email'] as String? ?? '',
      profile_image: json['profile_image'] as String? ?? '',
      user_interest: (json['user_interest'] as List<dynamic>?)
              ?.map((e) => UserInterest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      industry_sector: json['industry_sector'] as String? ?? '',
      attendee_id: json['attendee_id'] ?? 0,
    );

Map<String, dynamic> _$$ContactDataImplToJson(_$ContactDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'phone': instance.phone,
      'company': instance.company,
      'position': instance.position,
      'email': instance.email,
      'profile_image': instance.profile_image,
      'user_interest': instance.user_interest,
      'industry_sector': instance.industry_sector,
      'attendee_id': instance.attendee_id,
    };
