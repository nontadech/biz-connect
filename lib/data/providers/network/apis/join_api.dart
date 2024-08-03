import 'dart:io';
import 'package:biz_connect/app/services/local_storage.dart';
import 'package:biz_connect/data/providers/network/api_endpoint.dart';
import 'package:biz_connect/data/providers/network/api_provider.dart';
import 'package:biz_connect/data/providers/network/api_request_representable.dart';
import 'package:biz_connect/domain/entities/event_entity.dart';
import 'package:biz_connect/domain/entities/join_entity.dart';
import 'package:get/get.dart';

enum JoinType { 
  getEventMenuList, 
  getEventAgenda, 
  postEventSessionRatingAnswer, 
  getEventSessionRatingAnswers, 
  getEventFloorPlan, 
  getSpeaker, 
  getEventFile, 
  sendFileEmail, 
  getEventPartners, 
  getEventGallery 
}

class JoinAPI implements APIRequestRepresentable {
  final JoinType type;
  int? eventId;
  int? speakerId;
  String? room;
  FileEmailInput? fileEmailInput;
  List<int>? answers;
  SessionRateInput? sessionRateInput;
  JoinAPI._({required this.type, this.eventId, this.room, this.sessionRateInput, this.speakerId, this.fileEmailInput});
  final store = Get.find<LocalStorageService>();

  JoinAPI.getEventMenuList(int eventId) : this._(type: JoinType.getEventMenuList, eventId: eventId);
  JoinAPI.getEventSessionRatingAnswers(SessionRateInput sessionRateInput) : this._(type: JoinType.getEventSessionRatingAnswers, sessionRateInput: sessionRateInput);
  JoinAPI.getEventAgenda(int eventId, String? room, int? speakerId) : this._(type: JoinType.getEventAgenda, eventId: eventId, room: room, speakerId: speakerId);
  JoinAPI.postEventSessionRatingAnswer(SessionRateInput sessionRateInput) : this._(type: JoinType.postEventSessionRatingAnswer, sessionRateInput: sessionRateInput);
  JoinAPI.getEventFloorPlan(int eventId) : this._(type: JoinType.getEventFloorPlan, eventId: eventId);
  JoinAPI.getSpeaker(int eventId) : this._(type: JoinType.getSpeaker, eventId: eventId);
  JoinAPI.getEventFile(int eventId) : this._(type: JoinType.getEventFile, eventId: eventId);
  JoinAPI.sendFileEmail(FileEmailInput fileEmailInput) : this._(type: JoinType.sendFileEmail, fileEmailInput: fileEmailInput);
  JoinAPI.getEventPartners(int eventId) : this._(type: JoinType.getEventPartners, eventId: eventId);
  JoinAPI.getEventGallery(int eventId) : this._(type: JoinType.getEventGallery, eventId: eventId);
  

  @override
  String get endpoint => APIEndpoint.api;

  @override
  String get path {
    switch (type) {
      case JoinType.getEventGallery:
        return "/getEventGallery";
      case JoinType.getEventPartners:
        return "/getEventPartners";
      case JoinType.sendFileEmail:
        return "/sendFileEmail";
      case JoinType.getEventFile:
        return "/getEventFile";
      case JoinType.getSpeaker:
        return "/getSpeaker";
      case JoinType.getEventFloorPlan:
        return "/getEventFloorPlan";
      case JoinType.getEventSessionRatingAnswers:
        return "/getEventSessionRatingAnswers";
      case JoinType.postEventSessionRatingAnswer:
        return "/postEventSessionRatingAnswer";
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
      case JoinType.getEventGallery:
      case JoinType.getEventPartners:
      case JoinType.getEventFile:
      case JoinType.getSpeaker:
      case JoinType.getEventFloorPlan:
      case JoinType.getEventSessionRatingAnswers:
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
      case JoinType.getSpeaker:
        return {
          'event_id': eventId.toString(),
          'lang': store.setting!.language == LangType.th ? 'th' : 'en'
        };
      case JoinType.getEventGallery:
      case JoinType.getEventPartners:
      case JoinType.getEventFile:
      case JoinType.getEventFloorPlan:
        return {
          'event_id': eventId.toString(),
        };
      case JoinType.getEventSessionRatingAnswers:
        return {
          'event_id': sessionRateInput!.eventId.toString(),
          'user_id': store.user!.data!.attendee!.id.toString(),
          'agenda_id': sessionRateInput!.agendaId.toString(),
          'question_type_id': sessionRateInput!.questionTypeId.toString(),
        };
      case JoinType.getEventAgenda:
      if (room != null) {
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': eventId.toString(),
          'room': room!.toString(),
          'lang': store.setting!.language == LangType.th ? 'th' : 'en'
        };
      }else {
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': eventId.toString(),
          'speaker_id': speakerId!.toString(),
          'lang': store.setting!.language == LangType.th ? 'th' : 'en'
        };
      }
   
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
  get body {
    switch (type) {
      case JoinType.sendFileEmail:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': fileEmailInput!.eventId.toString(),
          'attendee_id': store.user!.data!.attendee!.id.toString(),
          'email': fileEmailInput!.email,
        };
      case JoinType.postEventSessionRatingAnswer:
        return {
          HttpHeaders.contentTypeHeader: 'application/json',
          'event_id': sessionRateInput!.eventId.toString(),
          'user_id': store.user!.data!.attendee!.id.toString(),
          'agenda_id': sessionRateInput!.agendaId.toString(),
          'is_session' : 1,
          'answers': sessionRateInput!.answers!.map((e) => {
            'answer': e.answer,
            'question_type_id': 5,
            'comment': e.comment
          }).toList()
        };
      default:
        return null;
    }
   
  }
}
