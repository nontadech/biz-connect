import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/data/models/ticket_model.dart';
import 'package:biz_connect/data/providers/network/apis/event_api.dart';
import 'package:biz_connect/domain/repositories/event_repository.dart';

class EventRepositoryIml extends EventRepository {

  @override
  Future<Event> getMyEventHome() async {
    final response = await EventAPI.getMyEventHome().request();
    return Event.fromJson(response);
  }
  
  @override
  Future<bool> favoriteEvent(int eventId) async {
    final response = await EventAPI.chkFavoriteEvent(eventId).request();
    return FavoriteEvent.fromJson(response).data!.status!;
  }
  
  @override
  Future<PopularEvent> getEvent() async {
    final response = await EventAPI.getEvent().request();
    return PopularEvent.fromJson(response);
  }

  @override
  Future<EventStat> getMyEventStat() async {
    final response = await EventAPI.getMyEventStat().request();
    return EventStat.fromJson(response);
  }
  
  @override
  Future<PopularEvent> getFavoriteEvent() async {
    final response = await EventAPI.getFavoriteEvent().request();
    return PopularEvent.fromJson(response);
  }

  @override
  Future<bool> setFavoriteEvent(int eventId) async {
    final response = await EventAPI.setFavoriteEvent(eventId).request();
    return FavoriteEvent.fromJson(response).data!.status!;
  }

  @override
  Future<Ticket> getMyEventTickets() async {
    final response = await EventAPI.getMyEventTickets().request();
    return Ticket.fromJson(response);
  }
  
  @override
  Future<Ticket> getMyEventTicket(int eventId) async {
    final response = await EventAPI.getMyEventTicket(eventId).request();
    return Ticket.fromJson(response);
  }

  @override
  Future<EventFromRegister> getEventFromRegister(int eventId) async {
    final response = await EventAPI.getEventFromRegister(eventId).request();
    return EventFromRegister.fromJson(response);
  }

  @override
  Future<EventPermission> getEventPermission(int eventId) async {
    final response = await EventAPI.getEventPermission(eventId).request();
    return EventPermission.fromJson(response);
  }
  
}
