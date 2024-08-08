import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:get/get.dart';

enum EventType { 
    getMyEventHome, 
    getEvent, 
    chkFavoriteEvent, 
    getMyEventStat, 
    getFavoriteEvent, 
    setFavoriteEvent, 
    getMyEventTickets, 
    getMyEventTicket,
    getEventFromRegister
  }

class EventAPI implements APIRequestRepresentable {
  final EventType type;
  int? eventId;
  EventAPI._({required this.type, this.eventId});
  final store = Get.find<LocalStorageService>();

  EventAPI.getFavoriteEvent() : this._(type: EventType.getFavoriteEvent);
  EventAPI.getMyEventHome() : this._(type: EventType.getMyEventHome);
  EventAPI.getEvent() : this._(type: EventType.getEvent);
  EventAPI.getMyEventStat() : this._(type: EventType.getMyEventStat);
  EventAPI.getMyEventTickets() : this._(type: EventType.getMyEventTickets);
  EventAPI.getMyEventTicket(int eventId) : this._(type: EventType.getMyEventTicket, eventId: eventId);
  EventAPI.chkFavoriteEvent(int eventId) : this._(type: EventType.chkFavoriteEvent, eventId: eventId);
  EventAPI.setFavoriteEvent(int eventId) : this._(type: EventType.setFavoriteEvent, eventId: eventId);
  EventAPI.getEventFromRegister(int eventId) : this._(type: EventType.getEventFromRegister, eventId: eventId);
  

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case EventType.getEventFromRegister:
        return "/getEventFromRegister";
      case EventType.getMyEventTickets:
      case EventType.getMyEventTicket:
        return "/getMyEventTickets";
      case EventType.setFavoriteEvent:
        return "/favoriteEvent";
      case EventType.getFavoriteEvent:
        return "/getFavoriteEvent";
      case EventType.getMyEventStat:
        return "/getMyEventStat";
      case EventType.getMyEventHome:
        return "/getMyEventHome";
      case EventType.getEvent:
        return "/getEvent";
      case EventType.chkFavoriteEvent:
        return "/chkFavoriteEvent";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    switch (type) {
      case EventType.getEventFromRegister:
      case EventType.getFavoriteEvent:
      case EventType.getMyEventHome:
      case EventType.getMyEventStat:
      case EventType.getEvent:
      case EventType.chkFavoriteEvent:
      case EventType.getMyEventTickets:
      case EventType.getMyEventTicket:
        return HTTPMethod.get;
      case EventType.setFavoriteEvent:
      default:
        return HTTPMethod.post;
    }
  }

  @override
  Map<String, String> get headers {
    switch (type) {
      case EventType.getMyEventTickets:
      case EventType.getMyEventTicket:
      case EventType.getEventFromRegister:
         if (store.user == null) {
          return {
            HttpHeaders.contentTypeHeader: 'application/json',
          };
        }
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: 'Bearer ${store.user!.data!.attendee!.api_token}',
          'user_id': store.user!.data!.attendee!.id.toString()
        };
      default:
        if (store.user == null) {
          return {
            HttpHeaders.contentTypeHeader: 'application/json',
          };
        }
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: 'Bearer ${store.user!.data!.attendee!.api_token}'
        };
    }
  }

  @override
  Map<String, String> get query {
     switch (type) {
      case EventType.getEventFromRegister:
      case EventType.getMyEventTicket:
       return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': eventId.toString(),
        };
      case EventType.getFavoriteEvent:
      case EventType.getMyEventHome:
      case EventType.getEvent:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'lang': store.setting!.language == LangType.th ? 'th' : 'en'
        };
      case EventType.chkFavoriteEvent:
      case EventType.setFavoriteEvent:
        if(store.user == null){
          return {
            HttpHeaders.contentTypeHeader: 'application/json'
          };
        }
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': eventId.toString(),
          'user_id': store.user!.data!.attendee!.id.toString()
        };
      default:
        return {
          HttpHeaders.contentTypeHeader: 'application/json'
        };
    }

  }



  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
  
  @override
  get body => null;
}
