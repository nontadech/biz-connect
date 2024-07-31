// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QRContactDataImpl _$$QRContactDataImplFromJson(Map<String, dynamic> json) =>
    _$QRContactDataImpl(
      user_id: (json['user_id'] as num?)?.toInt(),
      first_name: json['first_name'] as String? ?? '',
      last_name: json['last_name'] as String? ?? '',
      tel: json['tel'] as String? ?? '',
      company: json['company'] as String? ?? '',
      position: json['position'] as String? ?? '',
      profile_image: json['profile_image'] as String? ?? '',
      email: json['email'] as String? ?? '',
      user_interest: (json['user_interest'] as List<dynamic>?)
              ?.map((e) => UserInterest.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$QRContactDataImplToJson(_$QRContactDataImpl instance) =>
    <String, dynamic>{
      'user_id': instance.user_id,
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'tel': instance.tel,
      'company': instance.company,
      'position': instance.position,
      'profile_image': instance.profile_image,
      'email': instance.email,
      'user_interest': instance.user_interest,
    };
