// ignore_for_file: non_constant_identifier_names
import 'package:biz_connect/domain/entities/ticket_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';


@freezed
class Ticket with _$Ticket  {
  const factory Ticket({
    @Default([]) List<TicketData> tickets
  }) = _Ticket;
  factory Ticket.fromJson(Map<String, Object?> json)
      => _$TicketFromJson(json);
}
