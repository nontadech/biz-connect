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

_$QRPrivateEventDataImpl _$$QRPrivateEventDataImplFromJson(
        Map<String, dynamic> json) =>
    _$QRPrivateEventDataImpl(
      event_id: (json['event_id'] as num?)?.toInt(),
      category_title: json['category_title'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      thumnail: json['thumnail'] as String? ?? '',
      image_display: json['image_display'] as String? ?? '',
      location_name: json['location_name'] as String? ?? '',
      location_lat: (json['location_lat'] as num?)?.toDouble() ?? 0.0,
      location_lng: (json['location_lng'] as num?)?.toDouble() ?? 0.0,
      date: json['date'] as String? ?? '',
      date_end: json['date_end'] as String? ?? '',
      start_time: json['start_time'] as String? ?? '',
      end_time: json['end_time'] as String? ?? '',
      show_information: json['show_information'] as String? ?? '',
      show_register: json['show_register'] as String? ?? '',
      event_url: json['event_url'] as String? ?? '',
      venue_name: json['venue_name'] as String? ?? '',
      venue_tel: json['venue_tel'] as String? ?? '',
      venue_email: json['venue_email'] as String? ?? '',
      direction_taxi: json['direction_taxi'] as String? ?? '',
      direction_bts: json['direction_bts'] as String? ?? '',
      direction_foot: json['direction_foot'] as String? ?? '',
      company_info: json['company_info'] as String? ?? '',
    );

Map<String, dynamic> _$$QRPrivateEventDataImplToJson(
        _$QRPrivateEventDataImpl instance) =>
    <String, dynamic>{
      'event_id': instance.event_id,
      'category_title': instance.category_title,
      'title': instance.title,
      'description': instance.description,
      'thumnail': instance.thumnail,
      'image_display': instance.image_display,
      'location_name': instance.location_name,
      'location_lat': instance.location_lat,
      'location_lng': instance.location_lng,
      'date': instance.date,
      'date_end': instance.date_end,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'show_information': instance.show_information,
      'show_register': instance.show_register,
      'event_url': instance.event_url,
      'venue_name': instance.venue_name,
      'venue_tel': instance.venue_tel,
      'venue_email': instance.venue_email,
      'direction_taxi': instance.direction_taxi,
      'direction_bts': instance.direction_bts,
      'direction_foot': instance.direction_foot,
      'company_info': instance.company_info,
    };
