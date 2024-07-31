// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketDataImpl _$$TicketDataImplFromJson(Map<String, dynamic> json) =>
    _$TicketDataImpl(
      ticket_id: (json['ticket_id'] as num?)?.toInt(),
      ticket_type: json['ticket_type'] as String?,
      private_ref: json['private_ref'] as String? ?? '',
      fullname: json['fullname'] as String?,
      email: json['email'] as String? ?? '',
      tel: json['tel'] as String? ?? '',
      image_display: json['image_display'] as String? ?? '',
      images_event: json['images_event'] as String?,
      event_id: (json['event_id'] as num?)?.toInt(),
      event_title: json['event_title'] as String? ?? '',
      event_detail: json['event_detail'] as String? ?? '',
      venue_name: json['venue_name'] as String? ?? '',
      venue_name_full: json['venue_name_full'] as String? ?? '',
      event_date: json['event_date'] as String? ?? '',
      event_date_end: json['event_date_end'] as String? ?? '',
      event_start_time: json['event_start_time'] as String? ?? '',
      event_end_time: json['event_end_time'] as String? ?? '',
    );

Map<String, dynamic> _$$TicketDataImplToJson(_$TicketDataImpl instance) =>
    <String, dynamic>{
      'ticket_id': instance.ticket_id,
      'ticket_type': instance.ticket_type,
      'private_ref': instance.private_ref,
      'fullname': instance.fullname,
      'email': instance.email,
      'tel': instance.tel,
      'image_display': instance.image_display,
      'images_event': instance.images_event,
      'event_id': instance.event_id,
      'event_title': instance.event_title,
      'event_detail': instance.event_detail,
      'venue_name': instance.venue_name,
      'venue_name_full': instance.venue_name_full,
      'event_date': instance.event_date,
      'event_date_end': instance.event_date_end,
      'event_start_time': instance.event_start_time,
      'event_end_time': instance.event_end_time,
    };
