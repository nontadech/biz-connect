import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:get/get.dart';

enum JoinType { getEventMenuList, getEventAgenda }

class JoinAPI implements APIRequestRepresentable {
  final JoinType type;
  int? eventId;
  String? room;
  JoinAPI._({required this.type, this.eventId, this.room});
  final store = Get.find<LocalStorageService>();

  JoinAPI.getEventMenuList(int eventId) : this._(type: JoinType.getEventMenuList, eventId: eventId);
  JoinAPI.getEventAgenda(int eventId, String room) : this._(type: JoinType.getEventAgenda, eventId: eventId, room: room);
  

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case JoinType.getEventAgenda:
        return "/getEventAgenda";
      case JoinType.getEventMenuList:
        return "/getEventMenuList";
      default:
        return "";
    }
  }

  @override
  HTTPMethod get method {
    switch (type) {
      case JoinType.getEventAgenda:
      case JoinType.getEventMenuList:
        return HTTPMethod.get;
      default:
        return HTTPMethod.post;
    }
  }

  @override
  Map<String, String> get headers {
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

  @override
  Map<String, String> get query {
    switch (type) {
      case JoinType.getEventAgenda:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': eventId.toString(),
          'room': room.toString(),
          'lang': store.setting!.language == LangType.th ? 'th' : 'en'
        };
      case JoinType.getEventMenuList:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': eventId.toString()
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
