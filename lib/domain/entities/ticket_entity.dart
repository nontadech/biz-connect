// ignore_for_file: non_constant_identifier_names
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket_entity.freezed.dart';
part 'ticket_entity.g.dart';


@freezed
class TicketData with _$TicketData  {
  const factory TicketData({
    int? ticket_id,
    String? ticket_type,
    @Default('') String? private_ref,
    String? fullname,
    @Default('') String? email,
    @Default('') String? tel,
    @Default('') String? image_display,
    String? images_event,
    int? event_id,
    @Default('')  String? event_title,
    @Default('') String? event_detail,
    @Default('')  String? venue_name,
    @Default('')  String? venue_name_full,
    @Default('') String? event_date,
    @Default('') String? event_date_end,
    @Default('') String? event_start_time,
    @Default('') String? event_end_time
  }) = _TicketData;
  factory TicketData.fromJson(Map<String, Object?> json)
      => _$TicketDataFromJson(json);
}
