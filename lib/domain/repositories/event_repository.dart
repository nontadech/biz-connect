import 'package:biz_connect/data/models/event_model.dart';
import 'package:biz_connect/data/models/ticket_model.dart';

abstract class EventRepository {
  Future<PopularEvent> getEvent();
  Future<Event> getMyEventHome();
  Future<EventStat> getMyEventStat();
  Future<PopularEvent> getFavoriteEvent();
  Future<Ticket> getMyEventTickets();
  Future<Ticket> getMyEventTicket(int eventId);
  Future<bool> favoriteEvent(int eventId);
  Future<bool> setFavoriteEvent(int eventId);
}
